{-# LANGUAGE BangPatterns #-}

module Main where

import Waveform.Core
import Waveform.Embedding
import Waveform.Topology.Rips
import Waveform.Topology.Persistence
import qualified Data.Vector.Unboxed as V
import qualified Data.IntSet as IS
import Text.Printf
import Data.List (sort)
import Control.Monad (when, forM_)

main :: IO ()
main = do
  putStrLn (replicate 80 '=')
  putStrLn "FINAL CORRECTNESS VALIDATION"
  putStrLn (replicate 80 '=')

  putStrLn "\n1. Testing boundary-squared-zero (boundary of boundary is zero)..."
  testBoundarySquaredZero

  putStrLn "\n2. Testing DeathTime ordering..."
  testDeathTimeOrdering

  putStrLn "\n3. Testing validateReduction safety..."
  testValidateReductionSafety

  putStrLn "\n4. Testing complete pipeline on a circle..."
  testCirclePipeline

  putStrLn "\n5. Testing completeFiltration on an open (non-closed) input..."
  testCompleteFiltration

  putStrLn "\n6. Testing Rips triangle count matches brute force..."
  testTriangleCountMatchesBruteForce

  putStrLn ("\n" ++ replicate 80 '=')
  putStrLn "ALL TESTS COMPLETE"
  putStrLn (replicate 80 '=')

symmetricDifference :: IS.IntSet -> IS.IntSet -> IS.IntSet
symmetricDifference a b =
  IS.difference (IS.union a b) (IS.intersection a b)

testBoundarySquaredZero :: IO ()
testBoundarySquaredZero = do
  let vertices = [ Simplex 0 (IS.singleton i) 0.0 | i <- [0..2] ]
      edges = [ Simplex 1 (IS.fromList [0,1]) 0.5
              , Simplex 1 (IS.fromList [1,2]) 0.6
              , Simplex 1 (IS.fromList [0,2]) 0.7 ]
      triangle = [ Simplex 2 (IS.fromList [0,1,2]) 0.7 ]
      filtration = sortFiltration $ vertices ++ edges ++ triangle

      matrix = buildBoundaryMatrix filtration

      checkColumn col =
        let subBoundaries = map (\rowIdx ->
                let sub = unSparseColumn (bcColumn (matrix !! rowIdx))
                in sub) (IS.toList (unSparseColumn (bcColumn col)))
            totalBoundary = foldl symmetricDifference IS.empty subBoundaries
        in IS.null totalBoundary

      allColumnsValid = all checkColumn matrix

  if allColumnsValid
    then putStrLn "  PASS: boundary-of-boundary is zero for all simplices"
    else putStrLn "  FAIL: boundary-of-boundary is nonzero!"

testDeathTimeOrdering :: IO ()
testDeathTimeOrdering = do
  -- Test the DeathTime Ord instance directly. Sorting a list of
  -- PersistencePair instead (as the original test did) exercises the
  -- *derived* PersistencePair Ord, which compares ppBirth first (it's
  -- the first field) and never even looks at ppDeath unless two births
  -- tie -- so it can't actually tell us anything about DeathTime's
  -- ordering.
  let deaths = [ Infinite, Finite 1.0, Finite 0.8, Infinite, Finite 0.8 ]
      sorted = sort deaths
      expected = [ Infinite, Infinite, Finite 0.8, Finite 0.8, Finite 1.0 ]

  if sorted == expected
    then putStrLn "  PASS: DeathTime ordering correct (Infinite < Finite)"
    else do
      putStrLn "  FAIL: DeathTime ordering incorrect"
      printf "    Expected: %s\n" (show expected)
      printf "    Got:      %s\n" (show sorted)

  -- Also confirm the derived PersistencePair Ord behaves as documented:
  -- birth first, then death, then dim (NOT death-time-first). Anyone
  -- relying on 'sort :: [PersistencePair] -> [PersistencePair]' to group
  -- infinite bars first needs to sort on 'ppDeath' explicitly instead.
  let pairs = [ PersistencePair 0.7 Infinite 1
              , PersistencePair 0.3 (Finite 0.8) 0
              , PersistencePair 0.0 Infinite 0
              , PersistencePair 0.5 (Finite 1.0) 0
              ]
      byBirth = sort pairs
      birthsInOrder = map ppBirth byBirth == [0.0, 0.3, 0.5, 0.7]

  if birthsInOrder
    then putStrLn "  PASS: derived PersistencePair Ord sorts by birth first, as documented"
    else putStrLn "  FAIL: derived PersistencePair Ord does not sort by birth first"

testValidateReductionSafety :: IO ()
testValidateReductionSafety = do
  let invalidColumn = BoundaryColumn
        { bcDim = 1
        , bcBirth = 0.5
        , bcColumn = SparseColumn (IS.singleton 2)
        , bcLow = 10
        }
      smallMatrix = [ BoundaryColumn 0 0.0 (SparseColumn IS.empty) (-1)
                    , BoundaryColumn 0 0.0 (SparseColumn IS.empty) (-1)
                    , invalidColumn
                    ]
      isValid = validateReduction smallMatrix

  if not isValid
    then putStrLn "  PASS: validateReduction correctly rejects out-of-range low"
    else putStrLn "  FAIL: validateReduction should have rejected out-of-range low"

testCirclePipeline :: IO ()
testCirclePipeline = do
  let n = 20
      cloud = PointCloud 2 n $ V.generate (n * 2) $ \idx ->
        let i = idx `div` 2
            j = idx `mod` 2
            angle = 2 * pi * fromIntegral i / fromIntegral n
        in case j of
             0 -> cos angle
             1 -> sin angle
             _ -> 0

      params = defaultRipsParams { rpMaxDistance = 0.7, rpNPoints = n }

      filtration = buildClosedRipsFiltration cloud params
      matrix = buildBoundaryMatrix filtration
      reduced = reduceStandard matrix
      validMatrix = validateReduction reduced

      barcode = computeRipsPersistence cloud params

      infiniteH1 = length [ p | p <- barcode
                              , ppDim p == 1
                              , case ppDeath p of Infinite -> True; _ -> False ]

  printf "  Filtration size: %d simplices\n" (length filtration)
  printf "  Boundary matrix valid after reduction: %s\n" (if validMatrix then "yes" else "no")
  printf "  H1 infinite features: %d (expected 1)\n" infiniteH1

  let finiteH1 = [ (ppBirth p, d)
                 | p <- barcode
                 , ppDim p == 1
                 , Finite d <- [ppDeath p] ]

  when (not (null finiteH1)) $ do
    printf "  Finite H1 features: %d\n" (length finiteH1)
    forM_ (take 3 finiteH1) $ \(birth, death) ->
      printf "    Birth: %.3f, Death: %.3f, Lifetime: %.3f\n"
        birth death (death - birth)

-- | Feed in only the top-dimensional simplices (no vertices, no edges)
--   and confirm completeFiltration reconstructs a closed complex that
--   buildBoundaryMatrix can then consume without erroring.
testCompleteFiltration :: IO ()
testCompleteFiltration = do
  let triangleOnly = [ Simplex 2 (IS.fromList [0,1,2]) 1.0 ]
      closed = completeFiltration triangleOnly
      dims = sort (map sDim closed)
      expectedDims = sort ([0,0,0,1,1,1,2] :: [Int])

  if dims == expectedDims
    then putStrLn "  PASS: completeFiltration reconstructed all faces"
    else do
      putStrLn "  FAIL: completeFiltration did not reconstruct expected faces"
      printf "    Expected dims: %s\n" (show expectedDims)
      printf "    Got dims:      %s\n" (show dims)

  -- buildBoundaryMatrix must not error on the completed filtration
  let matrix = buildBoundaryMatrix closed
  printf "  buildBoundaryMatrix succeeded with %d columns\n" (length matrix)

-- | Confirm the adjacency-based triangle generator in Rips.hs finds the
--   same triangles as a brute-force O(n^3) check, on a small random-ish
--   point cloud.
testTriangleCountMatchesBruteForce :: IO ()
testTriangleCountMatchesBruteForce = do
  let n = 30
      cloud = PointCloud 2 n $ V.generate (n * 2) $ \idx ->
        let i = idx `div` 2
            j = idx `mod` 2
            angle = 2 * pi * fromIntegral i / fromIntegral n
            wobble = 0.3 * sin (5 * angle)
        in case j of
             0 -> (1 + wobble) * cos angle
             1 -> (1 + wobble) * sin angle
             _ -> 0

      params = defaultRipsParams { rpMaxDistance = 0.5, rpNPoints = n }
      filtration = buildClosedRipsFiltration cloud params
      triCount = length (filter (\s -> sDim s == 2) filtration)

      -- brute-force reference using the same distance threshold logic
      stats = embeddingStats cloud
      (minB, maxB) = esBoundingBox stats
      scale = max 1e-12 (maxB - minB)
      maxDist = rpMaxDistance params * scale
      dist i j = sqrt (sum [ (px i k - px j k)^(2::Int) | k <- [0,1] ])
        where px pt k = let (PointCloud dim _ dv) = cloud in dv V.! (pt * dim + k)
      edgeExists i j = dist i j <= maxDist
      bruteTriCount = length [ () | i <- [0 .. n-3], j <- [i+1 .. n-2], k <- [j+1 .. n-1]
                                   , edgeExists i j, edgeExists i k, edgeExists j k ]

  if triCount == bruteTriCount
    then printf "  PASS: adjacency-based generator found %d triangles, matches brute force\n" triCount
    else printf "  FAIL: adjacency-based=%d vs brute-force=%d\n" triCount bruteTriCount
