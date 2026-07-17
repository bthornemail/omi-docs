{-# LANGUAGE RecordWildCards, LambdaCase, BangPatterns #-}
{-# LANGUAGE ViewPatterns #-}

module Waveform.Topology.Rips
  ( -- Types
    RipsParams(..)
  , defaultRipsParams

    -- Rips complex construction
  , buildRipsFiltration
  , buildClosedRipsFiltration

    -- Persistence computation
  , computeRipsPersistence
  , computeRipsH0
  , computeRipsH1

    -- Distance computations
  , computeDistances

    -- Windowing
  , windowedRipsPersistence

    -- Test shapes
  , torusPointCloud
  , spherePointCloud
  ) where

import Waveform.Core
import Waveform.Embedding
import Waveform.Topology.Persistence
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector as B
import Data.List (sortBy, foldl')
import Data.Ord (comparing)
import Data.IntSet (IntSet)
import qualified Data.IntSet as IS
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as M

-- ===========================================
-- 1. RIPS PARAMETERS
-- ===========================================

data RipsParams = RipsParams
  { rpMaxDimension :: !Int      -- Maximum simplex dimension
  , rpMaxDistance  :: !Double   -- Maximum edge length
  , rpNPoints      :: !Int      -- Maximum points to process
  } deriving (Show, Eq)

defaultRipsParams :: RipsParams
defaultRipsParams = RipsParams
  { rpMaxDimension = 2          -- Up to triangles for H1
  , rpMaxDistance  = 1.0        -- Relative to point cloud scale
  , rpNPoints      = 500        -- Safety limit
  }

-- ===========================================
-- 2. EDGE AND DISTANCE COMPUTATIONS
-- ===========================================

-- | Euclidean distance between two points
euclideanDistance :: PointCloud -> Int -> Int -> Double
euclideanDistance (PointCloud dim n dataVec) i j
  | i < 0 || i >= n || j < 0 || j >= n = 0/0
  | otherwise =
      let offsetI = i * dim
          offsetJ = j * dim
          sumSq = V.sum $ V.generate dim $ \k ->
            let xi = dataVec V.! (offsetI + k)
                xj = dataVec V.! (offsetJ + k)
            in (xi - xj) * (xi - xj)
      in sqrt sumSq

-- | Compute all pairwise distances up to threshold, sorted by length
computeDistances :: PointCloud -> Double -> B.Vector Edge
computeDistances cloud@(PointCloud _ n _) maxDist
  | n <= 1 = B.empty
  | otherwise =
      let edges = [ Edge i j dist
                  | i <- [0 .. n - 2]
                  , j <- [i + 1 .. n - 1]
                  , let dist = euclideanDistance cloud i j
                  , dist <= maxDist
                  ]
          sortedEdges = sortBy (comparing eLength) edges
      in B.fromList sortedEdges

-- ===========================================
-- 3. CLOSED RIPS FILTRATION CONSTRUCTION
-- ===========================================

-- | Given the edge set of a Rips graph, generate all triangles whose
--   three edges are all present, without enumerating every (i,j,k)
--   triple. For each edge (i,j) we intersect the neighbor sets of i
--   and j; any common neighbor k > j closes a triangle. This costs
--   O(sum over edges of min(deg i, deg j)) instead of O(n^3), so it
--   scales with how dense the actual graph is rather than with the
--   full point count.
buildTriangles :: [Edge] -> Map (Int, Int) Double -> [(Int, Int, Int, Double)]
buildTriangles edges edgeMap =
  let adj :: Map Int IntSet
      adj = foldl' (\m (Edge i j _) ->
              M.insertWith IS.union i (IS.singleton j)
                (M.insertWith IS.union j (IS.singleton i) m))
              M.empty edges

      neighborsOf v = M.findWithDefault IS.empty v adj

      getEdgeBirth i j = M.lookup (min i j, max i j) edgeMap

  in [ (i, j, k, maxBirth)
     | Edge i j eij <- edges
     , i < j
     , k <- IS.toList (IS.intersection (neighborsOf i) (neighborsOf j))
     , k > j
     , Just eik <- [getEdgeBirth i k]
     , Just ejk <- [getEdgeBirth j k]
     , let maxBirth = maximum [eij, eik, ejk]
     ]

-- | Build closed Rips filtration (all faces included).
--   Guarantees the filtration is closed under faces.
buildClosedRipsFiltration :: PointCloud -> RipsParams -> Filtration
buildClosedRipsFiltration cloud@(PointCloud dim n dataVec) RipsParams{..}
  | n == 0 = []
  | otherwise =
      let n' = min rpNPoints n
          limitedCloud = if n' == n then cloud else
                          PointCloud dim n' (V.take (n' * dim) dataVec)

          stats = embeddingStats limitedCloud
          (minB, maxB) = esBoundingBox stats
          scale = max 1e-12 (maxB - minB)
          actualMaxDist = rpMaxDistance * scale

          edges = computeDistances limitedCloud actualMaxDist
          edgeList = B.toList edges

          edgeMap :: Map (Int, Int) Double
          edgeMap = M.fromList
            [ ((min i j, max i j), len)
            | Edge i j len <- edgeList
            ]

          vertices = [ Simplex 0 (IS.singleton i) 0.0 | i <- [0 .. n' - 1] ]

          edgeSimplices = [ Simplex 1 (IS.fromList [i, j]) len
                          | Edge i j len <- edgeList ]

          triangleSimplices
            | rpMaxDimension < 2 = []
            | otherwise =
                [ Simplex 2 (IS.fromList [i, j, k]) maxBirth
                | (i, j, k, maxBirth) <- buildTriangles edgeList edgeMap
                ]

          allSimplices = vertices ++ edgeSimplices ++ triangleSimplices

      in sortFiltration allSimplices

-- | Alias for backward compatibility
buildRipsFiltration :: PointCloud -> RipsParams -> Filtration
buildRipsFiltration = buildClosedRipsFiltration

-- ===========================================
-- 4. PERSISTENCE COMPUTATION USING RIPS
-- ===========================================

-- | Compute persistence for Rips complex
computeRipsPersistence :: PointCloud -> RipsParams -> Barcode
computeRipsPersistence cloud params =
  let filtration = buildClosedRipsFiltration cloud params
  in computePersistence StandardAlgorithm filtration

-- | Compute H0 for Rips complex
computeRipsH0 :: PointCloud -> RipsParams -> Barcode
computeRipsH0 cloud params =
  let filtration = buildClosedRipsFiltration cloud params
  in computeH0 filtration

-- | Compute H1 for Rips complex
computeRipsH1 :: PointCloud -> RipsParams -> Barcode
computeRipsH1 cloud params =
  let filtration = buildClosedRipsFiltration cloud params
  in computeH1 filtration

-- ===========================================
-- 5. WINDOWED ANALYSIS
-- ===========================================

-- | Windowed persistence analysis
windowedRipsPersistence :: PointCloud -> RipsParams -> Int -> Int
                         -> [(Int, Barcode)]
windowedRipsPersistence cloud params size stride =
  let windows = B.toList $ windowCloud size stride cloud
  in zip [0..]
     $ map (\win -> computeRipsPersistence win params) windows

-- ===========================================
-- 6. TEST SHAPES
-- ===========================================

-- | Generate torus point cloud
torusPointCloud :: Int -> Double -> Double -> PointCloud
torusPointCloud n bigR smallR =
  let dim = 3
      dataVec = V.generate (n * dim) $ \idx ->
        let i = idx `div` dim
            j = idx `mod` dim
            t = 2 * pi * fromIntegral i / fromIntegral n
            u = 2 * pi * fromIntegral i / fromIntegral n
        in case j of
             0 -> (bigR + smallR * cos t) * cos u
             1 -> (bigR + smallR * cos t) * sin u
             2 -> smallR * sin t
             _ -> 0
  in PointCloud dim n dataVec

-- | Generate sphere point cloud (Fibonacci sampling)
spherePointCloud :: Int -> Double -> PointCloud
spherePointCloud n radius =
  let dim = 3
      phi = pi * (3 - sqrt 5)  -- Golden angle
      dataVec = V.generate (n * dim) $ \idx ->
        let i = idx `div` dim
            j = idx `mod` dim
            y = 1 - (fromIntegral i / fromIntegral (n - 1)) * 2
            r = sqrt (1 - y * y)
            theta = phi * fromIntegral i
            x = cos theta * r
            z = sin theta * r
        in case j of
             0 -> x * radius
             1 -> y * radius
             2 -> z * radius
             _ -> 0
  in PointCloud dim n dataVec
