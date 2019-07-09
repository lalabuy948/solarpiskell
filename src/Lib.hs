{-# LANGUAGE DeriveGeneric #-}

module Lib where

import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics

data SolarObject = SolarObject { objectId       :: Int
                               , objectName     :: String
                               , isPlanet       :: Bool
                               , aroundMoons    :: [SolarObject]
                               , objectMass     :: Float -- 10 ^24 kg
                               , objectDiameter :: Float -- km
                               , objectGravity  :: Float -- m/s ^2
                               , aroundPlanets  :: [SolarObject]
                               } deriving (Show, Read, Generic)

matchesId :: Int -> SolarObject -> Bool
matchesId id object = objectId object == id

{-
 - Sun
 -}
sun :: SolarObject
sun = SolarObject 0 "Sun" False [] 1988500 1391000 275 allSolarPlanets

{-
 - Main objects - Planets
 -}
mercury :: SolarObject
mercury = SolarObject 1 "Mercury" True [] 0.330 4879 3.7 []

venus :: SolarObject
venus = SolarObject 2 "Venus" True [] 4.87 12.104 8.9 []

earth :: SolarObject
earth = SolarObject 3 "Earth" True [] 5.97 12.756 9.8 []

mars :: SolarObject
mars = SolarObject 4 "Mars" True [] 0.642 6792 3.7 []

jupiter :: SolarObject
jupiter = SolarObject 5 "Jupiter" True [] 1898 142.984 23.1 []

saturn :: SolarObject
saturn = SolarObject 6 "Saturn" True [] 568 120.536 9.0 []

uranus :: SolarObject
uranus = SolarObject 7 "Uranus" True [] 86.8 51.118 8.7 []

neptune :: SolarObject
neptune = SolarObject 8 "Neptune" True [] 102 49.528 11.0 []

allSolarPlanets :: [SolarObject]
allSolarPlanets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

allSolarObjects :: [SolarObject]
allSolarObjects = [sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]