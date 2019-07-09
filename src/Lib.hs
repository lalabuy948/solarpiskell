{-# LANGUAGE DeriveGeneric #-}

module Lib where

import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics

data SolarObject = SolarObject { objectId      :: Int
                               , objectName    :: String
                               , isPlanet      :: Bool
                               , aroundMoons   :: [SolarObject]
                               , objectMass    :: Int
                               , objectVolume  :: Int
                               , objectGravity :: Int
                               , aroundPlanets :: [SolarObject]
                               } deriving (Show, Read, Generic)

matchesId :: Int -> SolarObject -> Bool
matchesId id object = objectId object == id

{-
 - Sun
 -}
sun :: SolarObject
sun = SolarObject 0 "Sun" False [] 15 21 10 allSolarPlanets

{-
 - Main objects - Planets
 -}
mercury :: SolarObject
mercury = SolarObject 1 "Mercury" True [] 15 21 10 []

venus :: SolarObject
venus = SolarObject 2 "Venus" True [] 15 21 10 []

earth :: SolarObject
earth = SolarObject 3 "Earth" True [] 15 21 10 []

mars :: SolarObject
mars = SolarObject 4 "Mars" True [] 15 21 10 []

jupiter :: SolarObject
jupiter = SolarObject 5 "Jupiter" True [] 15 21 10 []

saturn :: SolarObject
saturn = SolarObject 6 "Saturn" True [] 15 21 10 []

uranus :: SolarObject
uranus = SolarObject 7 "Uranus" True [] 15 21 10 []

neptune :: SolarObject
neptune = SolarObject 8 "Neptune" True [] 15 21 10 []

allSolarPlanets :: [SolarObject]
allSolarPlanets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

allSolarObjects :: [SolarObject]
allSolarObjects = [sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]