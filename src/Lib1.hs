module Lib1 ( parseColumns
            ) where

parseColumns :: String -> ([Int], [Int])
parseColumns = foldr (\[l, r] (ls, rs) -> (l:ls, r:rs)) ([],[]) 
      . filter ((==) 2 . length) 
      . map (map read . words) 
      . lines