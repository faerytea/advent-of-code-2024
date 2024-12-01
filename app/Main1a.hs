module Main (main) where

import Data.List (sort)

import Lib

main :: IO ()
main = (sum
      . map abs
      . uncurry (zipWith (-))
      . (\(ls,rs) -> (sort ls, sort rs) )
      . foldr (\[l, r] (ls, rs) -> (l:ls, r:rs)) ([],[]) 
      . filter ((==) 2 . length) 
      . map (map read . words) 
      . lines) <$> getInput >>= print
