module Main (main) where

import Data.List (sort)

import Lib
import Lib1

main :: IO ()
main = (sum
      . map abs
      . uncurry (zipWith (-))
      . (\(ls,rs) -> (sort ls, sort rs) )
      . parseColumns) <$> getInput >>= print
