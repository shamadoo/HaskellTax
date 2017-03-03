module Main where

import Tax
import Bracket

main :: IO ()
main = do agi <- prompt "Adjusted Gross Income: "
          let tax = calculateTax (read agi :: Double)
          putStrLn ("Calculated Tax: " ++ show tax)

prompt :: String -> IO String
prompt msg = do putStrLn msg
                getLine
