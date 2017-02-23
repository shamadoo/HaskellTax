module Main where

import Tax
import Bracket

main :: IO ()
main = do putStr "Adjusted Gross Income: "
          agi <- getLine
          let tax = calculateTax (read agi :: Double)
          putStrLn ("Calculated Tax: " ++ show tax)