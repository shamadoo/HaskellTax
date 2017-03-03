module Tax
  ( calculateTax,
    calculateWithholding
  ) where

import Bracket

calculateTax :: Double -> Double -> Double

calculateTax agi deduct = calcTaxable agi - deduct

calculateWithholding :: Int -> Int -> Int

calculateWithholding a t = a * t
