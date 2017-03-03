module Bracket ( calcTaxable ) where

data Bracket = Bracket {  min :: Double
                       ,  rate :: Double
                       }  deriving (Show)

allBrackets = reverse
  [ Bracket 1 0.10
  , Bracket 9326 0.15
  , Bracket 37951 0.25
  , Bracket 91901 0.28
  , Bracket 191651 0.33
  , Bracket 416701 0.35
  , Bracket 418401 0.396 ]

calcTaxable :: Double -> Double
calcTaxable i = calcTax i 0 allBrackets

calcTax :: Double -> Double -> [Bracket] -> Double
calcTax i t []     = t
calcTax i t (x:xs) | i <= Bracket.min x = calcTax i t xs
                   | otherwise = calcTax remaining (tax + t) xs
                       where
                       remaining = Bracket.min x - 1
                       taxable = i - remaining
                       tax = Bracket.rate x * taxable
