{-# LANGUAGE RecordWildCards, LambdaCase, BangPatterns #-}
{-# LANGUAGE DeriveFunctor, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Waveform.Topology.Persistence
  ( -- Types
    DeathTime(..)
  , PersistencePair(..)
  , Barcode
  , BoundaryColumn(..)
  , SparseColumn(..)
  , BoundaryMatrix
  , PersistenceAlgorithm(..)

    -- Filtration utilities
  , simplexOrder
  , sortFiltration

    -- Boundary matrix construction
  , buildBoundaryMatrix
  , completeFiltration

    -- Matrix reduction algorithms
  , reduceBoundaryMatrix
  , reduceStandard

    -- Persistence computation
  , computePersistence
  , computeH0
  , computeH1
  , computeH2
  , extractPersistencePairs

    -- Validation and utilities
  , validateReduction
  , boundaryDensity
  , persistenceStatistics

    -- Specialized computations
  , streamingPersistence
  , windowedPersistence
  ) where

import Waveform.Core
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV
import qualified Data.Vector as B
import qualified Data.Vector.Mutable as BM
import Control.Monad.ST (runST, ST)
import Control.Monad (forM, forM_, when, foldM)
import Data.List (sortBy)
import Data.IntMap.Strict (IntMap)
import qualified Data.IntMap.Strict as IM
import Data.IntSet (IntSet)
import qualified Data.IntSet as IS
import qualified Data.Set as S
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as M
import Text.Printf (printf)
import Control.DeepSeq (NFData(..))

-- ===========================================
-- 1. SPARSE MATRIX REPRESENTATION
-- ===========================================

-- | Sparse column: set of row indices where boundary has a 1
newtype SparseColumn = SparseColumn { unSparseColumn :: IntSet }
  deriving (Show, Eq, Ord, NFData)

-- | Death time: either finite or infinite
data DeathTime = Infinite | Finite !Double
  deriving (Show, Eq)

instance NFData DeathTime where
  rnf Infinite = ()
  rnf (Finite d) = rnf d

-- Custom Ord: Infinite comes first, then sort Finite by value
instance Ord DeathTime where
  compare Infinite Infinite = EQ
  compare Infinite _ = LT
  compare _ Infinite = GT
  compare (Finite a) (Finite b) = compare a b

-- | Persistence pair with proper death time representation
data PersistencePair = PersistencePair
  { ppBirth :: !Double
  , ppDeath :: !DeathTime
  , ppDim   :: !Int
  } deriving (Show, Eq, Ord)

instance NFData PersistencePair where
  rnf (PersistencePair b d dim) = rnf b `seq` rnf d `seq` rnf dim

type Barcode = [PersistencePair]

-- | Boundary column with dimension and birth time
data BoundaryColumn = BoundaryColumn
  { bcDim    :: !Int          -- Dimension of the simplex
  , bcBirth  :: !Double       -- Filtration value (never changes!)
  , bcColumn :: !SparseColumn
  , bcLow    :: !Int          -- Lowest row index (for reduction), -1 if empty
  } deriving (Show, Eq)

instance NFData BoundaryColumn where
  rnf (BoundaryColumn d b c l) = rnf d `seq` rnf b `seq` rnf c `seq` rnf l

-- | Boundary matrix: columns sorted by birth time.
--   Kept as a list at the API boundary for ease of construction/consumption;
--   any function that needs indexed (O(1)) access converts to a
--   'Data.Vector' internally instead of using list '(!!)'.
type BoundaryMatrix = [BoundaryColumn]

-- | Persistence algorithm choice
data PersistenceAlgorithm
  = StandardAlgorithm    -- Standard reduction (Edelsbrunner et al.)
  deriving (Show, Eq, Enum, Bounded)

-- ===========================================
-- 2. SIMPLEX ORDERING AND BOUNDARIES
-- ===========================================

-- | Total order for simplices: birth, then dimension, then vertices
simplexOrder :: Simplex -> Simplex -> Ordering
simplexOrder s1 s2 =
  let cmpBirth  = compare (sBirth s1) (sBirth s2)
      cmpDim    = compare (sDim s1) (sDim s2)
      cmpVerts  = compare (IS.toAscList (sVertices s1))
                          (IS.toAscList (sVertices s2))
  in cmpBirth <> cmpDim <> cmpVerts

-- | Sort filtration with deterministic tie-breaking
sortFiltration :: Filtration -> Filtration
sortFiltration = sortBy simplexOrder

-- | All codimension-1 faces of a simplex (as vertex sets)
facesOf :: Simplex -> [IntSet]
facesOf s =
  let verts = IS.toList (sVertices s)
  in case sDim s of
       0 -> []
       d -> [ IS.fromList (take i verts ++ drop (i+1) verts) | i <- [0 .. d] ]

-- ===========================================
-- 3. FILTRATION CLOSURE AND BOUNDARY MATRIX
-- ===========================================

-- | Complete a filtration under faces: for every simplex present, ensure
--   all of its faces are present too (added with the same birth time as
--   the simplex that introduced them, unless already present with an
--   earlier birth). This makes 'buildBoundaryMatrix' total instead of
--   partial: a caller no longer needs to hand-construct a closed complex.
completeFiltration :: Filtration -> Filtration
completeFiltration simplices =
  let seed :: Map IntSet Simplex
      seed = M.fromList [ (sVertices s, s) | s <- simplices ]

      close :: Map IntSet Simplex -> [IntSet] -> Map IntSet Simplex
      close acc [] = acc
      close acc (v:vs) =
        case M.lookup v acc of
          Just _  -> close acc vs   -- already present
          Nothing ->
            -- v itself must appear as a face of something already in acc;
            -- reconstruct its Simplex from its vertex set and the minimum
            -- birth among the cofaces that require it.
            let dim = IS.size v - 1
                birth = minimum
                  [ sBirth s
                  | s <- M.elems acc
                  , v `elem` facesOf s
                  ]
                s' = Simplex dim v birth
                acc' = M.insert v s' acc
                newFaces = facesOf s'
            in close acc' (vs ++ newFaces)

      allFaces = concatMap facesOf simplices
      closed = close seed allFaces
  in sortFiltration (M.elems closed)

-- | Build closed boundary matrix from a filtration.
--   Throws error if filtration is not closed under faces; use
--   'completeFiltration' first if the input may not already be closed.
buildBoundaryMatrix :: Filtration -> BoundaryMatrix
buildBoundaryMatrix filtration = runST $ do
  let sortedFiltration = sortFiltration filtration
      n = length sortedFiltration

  -- Map from simplex key to its index in sorted order
  let idxMap :: Map IntSet Int
      idxMap = M.fromList
        [ (sVertices s, i)
        | (i, s) <- zip [0..] sortedFiltration
        ]

  columns <- BM.new n
  forM_ (zip [0..] sortedFiltration) $ \(j, simplex) -> do
    let dim = sDim simplex
        birth = sBirth simplex
        faces = facesOf simplex

    boundaryIndices <- case faces of
      [] -> return IS.empty
      _  -> do
        let findFaceIdx face = M.lookup face idxMap
            faceIndices = map findFaceIdx faces
        case sequence faceIndices of
          Nothing ->
            error $ "Filtration is not closed under faces.\n" ++
                    "Simplex " ++ show (sVertices simplex) ++
                    " (dim=" ++ show dim ++ ") has a missing face.\n" ++
                    "Filtration size: " ++ show n ++ "\n" ++
                    "Call completeFiltration first if the complex may " ++
                    "not already be closed."
          Just idxs -> return $ IS.fromList idxs

    let col  = SparseColumn boundaryIndices
        low  = if IS.null boundaryIndices then -1 else IS.findMax boundaryIndices
        bc   = BoundaryColumn dim birth col low

    BM.write columns j bc

  cols <- B.freeze columns
  return $ B.toList cols

-- ===========================================
-- 4. STANDARD BOUNDARY MATRIX REDUCTION
-- ===========================================

-- | Symmetric difference of two IntSets (Z2 addition)
symmetricDifference :: IntSet -> IntSet -> IntSet
symmetricDifference a b =
  IS.difference (IS.union a b) (IS.intersection a b)

-- | Add two boundary columns (Z2 addition)
addColumns :: BoundaryColumn -> BoundaryColumn -> BoundaryColumn
addColumns (BoundaryColumn dim birth (SparseColumn a) _)
           (BoundaryColumn _ _ (SparseColumn b) _) =
  let newSet = symmetricDifference a b
      newLow = if IS.null newSet then -1 else IS.findMax newSet
  in BoundaryColumn dim birth (SparseColumn newSet) newLow

-- | Standard reduction algorithm with pivot table (ELZ)
reduceStandard :: BoundaryMatrix -> BoundaryMatrix
reduceStandard cols0 = runST $ do
  let n = length cols0

  mcols <- BM.new n
  forM_ (zip [0..] cols0) $ \(i, c) -> BM.write mcols i c

  -- Pivot table: low -> column index that currently has that low
  piv <- MV.replicate n (-1 :: Int)

  forM_ [0 .. n - 1] $ \j -> do
    colJ <- BM.read mcols j
    reducedCol <- reduceCol piv mcols colJ
    BM.write mcols j reducedCol

    let l = bcLow reducedCol
    when (l /= -1) $ MV.write piv l j

  frozen <- B.freeze mcols
  return $ B.toList frozen

  where
    reduceCol :: MV.MVector s Int -> BM.MVector s BoundaryColumn
              -> BoundaryColumn -> ST s BoundaryColumn
    reduceCol piv mcols = go
      where
        go c = case bcLow c of
          -1 -> return c
          l -> do
            k <- MV.read piv l
            if k == -1
              then return c
              else do
                colK <- BM.read mcols k
                go (addColumns c colK)

-- | Main reduction function
reduceBoundaryMatrix :: PersistenceAlgorithm -> BoundaryMatrix -> BoundaryMatrix
reduceBoundaryMatrix StandardAlgorithm = reduceStandard

-- ===========================================
-- 5. PERSISTENCE PAIR EXTRACTION (O(1)-indexed)
-- ===========================================

-- | Extract persistence pairs from a reduced boundary matrix.
--   Uses a 'Data.Vector' internally so that looking up a column's
--   birth/dimension by index is O(1) rather than the O(n) cost of
--   list '(!!)', which made the original version quadratic overall.
extractPersistencePairs :: BoundaryMatrix -> Barcode
extractPersistencePairs cols0 =
  let vcols = B.fromList cols0
      n = B.length vcols

      killers :: Either String (IntMap Int)
      killers = foldM (\m (i, j) ->
                  if IM.member i m
                  then Left $ printf "Duplicate pivot %d in reduction" i
                  else Right $ IM.insert i j m
                ) IM.empty
                [ (i, j)
                | j <- [0 .. n - 1]
                , let i = bcLow (vcols B.! j)
                , i /= -1
                ]

  in case killers of
       Left err -> error err
       Right killerMap ->
         let killedRows :: IntSet
             killedRows = IS.fromList (IM.keys killerMap)

             finitePairs :: [PersistencePair]
             finitePairs =
               [ PersistencePair
                   { ppBirth = bcBirth (vcols B.! i)
                   , ppDeath = Finite (bcBirth (vcols B.! j))
                   , ppDim   = bcDim (vcols B.! i)
                   }
               | (i, j) <- IM.toList killerMap
               , i >= 0 && i < n && j >= 0 && j < n
               ]

             infinitePairs :: [PersistencePair]
             infinitePairs =
               [ PersistencePair
                   { ppBirth = bcBirth col
                   , ppDeath = Infinite
                   , ppDim   = bcDim col
                   }
               | i <- [0 .. n - 1]
               , let col = vcols B.! i
               , bcLow col == -1
               , not (IS.member i killedRows)
               ]

         in infinitePairs ++ finitePairs

-- ===========================================
-- 6. PERSISTENCE COMPUTATION FUNCTIONS
-- ===========================================

-- | Compute persistence for all dimensions
computePersistence :: PersistenceAlgorithm -> Filtration -> Barcode
computePersistence algorithm filtration =
  let matrix  = buildBoundaryMatrix filtration
      reduced = reduceBoundaryMatrix algorithm matrix
  in extractPersistencePairs reduced

-- | Union-find implementation for H0 persistence
computeH0 :: Filtration -> Barcode
computeH0 filtration =
  let vertices = filter (\s -> sDim s == 0) $ sortFiltration filtration
      edges    = filter (\s -> sDim s == 1) $ sortFiltration filtration

      vertexLabels = map (head . IS.toList . sVertices) vertices
      n = length vertexLabels

      labelToIdx :: Map Int Int
      labelToIdx = M.fromList $ zip vertexLabels [0..]

      vertexBirths = map sBirth vertices

  in if n == 0
     then []
     else runST $ do
       parent <- MV.new n
       forM_ [0 .. n - 1] $ \i -> MV.write parent i i

       rank   <- MV.replicate n (0 :: Int)
       births <- V.thaw (V.fromList vertexBirths)

       pairs     <- BM.new (length edges)
       pairCount <- MV.new 1
       MV.write pairCount 0 (0 :: Int)

       let find x = do
             p <- MV.read parent x
             if p == x
               then return x
               else do
                 root <- find p
                 MV.write parent x root
                 return root

       forM_ edges $ \edge -> do
         let (v1Label, v2Label) = case IS.toList (sVertices edge) of
               [a, b] -> (a, b)
               other  -> error $ "computeH0: expected a 1-simplex (2 " ++
                         "vertices), got " ++ show (length other) ++
                         " vertices: " ++ show other
             edgeBirth = sBirth edge

             v1 = case M.lookup v1Label labelToIdx of
                    Just idx -> idx
                    Nothing -> error $ "Vertex " ++ show v1Label ++
                                " not found in vertex list"
             v2 = case M.lookup v2Label labelToIdx of
                    Just idx -> idx
                    Nothing -> error $ "Vertex " ++ show v2Label ++
                                " not found in vertex list"

         root1 <- find v1
         root2 <- find v2

         when (root1 /= root2) $ do
           birth1 <- MV.read births root1
           birth2 <- MV.read births root2

           let dyingBirth = max birth1 birth2

           rank1 <- MV.read rank root1
           rank2 <- MV.read rank root2

           if rank1 < rank2
             then do
               MV.write parent root1 root2
               MV.write births root2 (min birth1 birth2)
             else do
               MV.write parent root2 root1
               MV.write births root1 (min birth1 birth2)
               when (rank1 == rank2) $ MV.modify rank (+1) root1

           idx <- MV.read pairCount 0
           BM.write pairs idx (PersistencePair dyingBirth (Finite edgeBirth) 0)
           MV.modify pairCount (+1) 0

       count <- MV.read pairCount 0
       finitePairs <- forM [0 .. count - 1] (BM.read pairs)

       infinitePairs <- do
         roots <- forM [0 .. n - 1] $ \i -> do
           root <- find i
           return (i, root)

         let uniqueRoots = S.fromList [r | (_, r) <- roots]

         forM (S.toList uniqueRoots) $ \root -> do
           birth <- MV.read births root
           return $ PersistencePair birth Infinite 0

       return $ finitePairs ++ infinitePairs

-- | Compute H1 persistence
computeH1 :: Filtration -> Barcode
computeH1 filtration =
  let matrix  = buildBoundaryMatrix filtration
      reduced = reduceStandard matrix
      pairs   = extractPersistencePairs reduced
  in filter (\p -> ppDim p == 1) pairs

-- | Compute H2 persistence (requires 3-simplices)
computeH2 :: Filtration -> Barcode
computeH2 filtration =
  let matrix  = buildBoundaryMatrix filtration
      reduced = reduceStandard matrix
      pairs   = extractPersistencePairs reduced
  in filter (\p -> ppDim p == 2) pairs

-- ===========================================
-- 7. VALIDATION AND UTILITIES
-- ===========================================

-- | Validate that reduction is correct
validateReduction :: BoundaryMatrix -> Bool
validateReduction reduced = runST $ do
  let n = length reduced

  piv   <- MV.replicate n (-1 :: Int)
  valid <- MV.new 1
  MV.write valid 0 True

  forM_ (zip [0..] reduced) $ \(j, col) -> do
    let low = bcLow col
    when (low /= -1) $ do
      if low < 0 || low >= n
        then MV.write valid 0 False
        else do
          existing <- MV.read piv low
          if existing == -1
            then MV.write piv low j
            else MV.write valid 0 False

  MV.read valid 0

-- | Compute boundary density (proportion of possible boundary entries)
boundaryDensity :: BoundaryMatrix -> Double
boundaryDensity columns =
  let totalPossible = sum [ bcDim c + 1 | c <- columns, bcDim c > 0 ]
      nonZero = sum [ IS.size (unSparseColumn (bcColumn c)) | c <- columns ]
  in if totalPossible == 0 then 0.0
     else fromIntegral nonZero / fromIntegral totalPossible

-- | Compute statistics from persistence barcode
persistenceStatistics :: Barcode -> (Int, Int, Int, Double, Double, Double)
persistenceStatistics barcode =
  let h0 = filter (\p -> ppDim p == 0) barcode
      h1 = filter (\p -> ppDim p == 1) barcode
      h2 = filter (\p -> ppDim p == 2) barcode

      computeStats :: [PersistencePair] -> (Int, Double, Double)
      computeStats pairs =
        let finite = [ (ppBirth p, d)
                     | p <- pairs
                     , Finite d <- [ppDeath p] ]
            m = length finite
            lifetimes = [ d - birth | (birth, d) <- finite ]
            meanLife = if null lifetimes then 0 else sum lifetimes / fromIntegral m
            maxLife  = if null lifetimes then 0 else maximum lifetimes
        in (m, meanLife, maxLife)

      (n0, mean0, max0) = computeStats h0
      (n1, mean1, max1) = computeStats h1
      (n2, mean2, max2) = computeStats h2

  in (n0, n1, n2, mean0, mean1, mean2)

-- ===========================================
-- 8. STREAMING AND WINDOWED COMPUTATIONS
-- ===========================================

-- | Streaming persistence for large datasets
streamingPersistence :: (PointCloud -> Filtration)
                      -> [PointCloud]
                      -> [Barcode]
streamingPersistence buildFiltration clouds =
  map (computePersistence StandardAlgorithm . buildFiltration) clouds

-- | Windowed persistence with dimension separation
windowedPersistence :: (PointCloud -> Filtration)
                     -> [PointCloud]
                     -> ([(Int, Barcode)], [(Int, Barcode)])
windowedPersistence buildFiltration clouds =
  let processWindow i cloud =
        let filtration = buildFiltration cloud
            h0 = computeH0 filtration
            h1 = computeH1 filtration
        in ((i, h0), (i, h1))

      results = zipWith processWindow [0..] clouds
      (h0Results, h1Results) = unzip results

  in (h0Results, h1Results)
