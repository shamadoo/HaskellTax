module Main where

import Tax
import Bracket

main :: IO ()
main = do agi <- prompt "Adjusted Gross Income: "
          deduct <- prompt "Deductions: "
          let tax = calculateTax (read agi :: Double) (read deduct :: Double)
          putStrLn ("Calculated Tax: " ++ show tax)

prompt :: String -> IO String
prompt msg = do putStrLn msg
                getLine
