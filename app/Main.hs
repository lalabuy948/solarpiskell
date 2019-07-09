{-# LANGUAGE OverloadedStrings #-}

module Main where

import GHC.Generics
import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics
import Web.Scotty
import Lib

instance ToJSON SolarObject
instance FromJSON SolarObject


routes :: ScottyM ()
routes = do
  get "/allSolarObjects" $ do
    json allSolarObjects

  get "/solarObject/:id" $ do
    id <- param "id"
    json (filter (matchesId id) allSolarObjects)

main = do
    putStrLn "Starting Server on localhost:3000 ..."
    scotty 3000 routes
