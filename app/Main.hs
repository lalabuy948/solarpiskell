{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty

routes :: ScottyM ()
routes = do
  get "/hello" $ do
    text "hello world!"

main = do
    putStrLn "Starting Server..."
    scotty 3000 routes
