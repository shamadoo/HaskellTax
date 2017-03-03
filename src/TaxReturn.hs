module TaxReturn( TaxReturn(..) ) where

data TaxReturn = TaxReturn {  agi :: Double
                           ,  taxed :: Double
                           ,  deduct :: Double
                           ,  result :: Double
                           }  deriving (Show)
