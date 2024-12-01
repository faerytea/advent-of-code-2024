module Lib ( getInput
           ) where

import System.Environment (getArgs)

getInput :: IO String
getInput = getArgs >>= \args ->
    if null args then getContents
                 else readFile (head args)
