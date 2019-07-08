module Lib
    ( someFunc
    ) where

import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics

someFunc :: IO ()
someFunc = putStrLn "someFunc"
