module Tax
  ( calculateTax,
    calculateWithholding
  ) where

import Bracket
import TaxReturn

calculateTax :: Double -> Double -> TaxReturn

calculateTax agi deduct = TaxReturn agi taxable deduct result
                          where taxable = calcTaxable agi
                                result = taxable - deduct

calculateWithholding :: Int -> Int -> Int

calculateWithholding a t = a * t
