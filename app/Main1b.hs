module Main (main) where

import Data.List (group, sort)

import Lib
import Lib1

main :: IO ()
main = (
    -- fmap (map (\a -> let example = head a in (example, example * length a)) . group . sort) .
    solveRaw . 
    parseColumns) <$> getInput >>= print

process :: Ord a => [a] -> [(a, Int)]
process = map (\l -> (head l, length l)) . group . sort

solveRaw :: ([Int], [Int]) -> Int
solveRaw (rawl, rawr) = let l = process rawl
                            r = process rawr
                        in solve l r

solve :: [(Int, Int)] -> [(Int, Int)] -> Int
solve (l:ls) (r:rs) = case compare (fst l) (fst r) of
    EQ -> (fst l) * (snd l) * (snd r) + solve ls rs
    LT -> solve ls (r:rs)
    GT -> solve (l:ls) rs
solve [] _ = 0
solve _ [] = 0