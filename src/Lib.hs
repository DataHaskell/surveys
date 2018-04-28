{-# language TemplateHaskell, DataKinds, FlexibleContexts #-}
module Lib where

import qualified Control.Foldl as L
import Data.Vinyl (rcast)
import Frames
import Frames.CSV
import Data.Text


q1path :: String
q1path = "april-5-2018/data/q1"

tableTypes' (rowGen "april-5-2018/data/q1"){
    rowTypeName = "Q1"
  , columnNames = [ "Label", "Count" ]
  , tablePrefix = "NoHead"}

loadRows :: IO (Frame Q1)
loadRows = inCoreAoS (readTable q1path)
