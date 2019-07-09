module Lib
    ( printSun
    ) where

import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics


data SolarObject = SolarObject { objecttId     :: Int
                               , objectName    :: String
                               , isPlanet      :: Bool
                               , aroundMoons   :: [SolarObject]
                               , objectMass    :: Int
                               , objectVolume  :: Int
                               , objectGravity :: Int
                               , aroundPlanets :: [SolarObject]
                               } deriving (Eq, Show, Read)

sun :: SolarObject
sun = SolarObject 1 "Sun" False [] 15 21 10 []

printSun :: IO ()
printSun = do
  print $ sun
