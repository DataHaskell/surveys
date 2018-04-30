{-# language TemplateHaskell, DataKinds, FlexibleContexts #-}
module Lib where

-- import Control.Monad.IO.Class
-- import Control.Monad.Catch

-- import qualified Control.Foldl as L
-- import Data.Vinyl (Rec(..), rcast)
-- import Frames (Frame(..), Record(..), tableTypes, tableTypes', inCoreAoS, readTable, runcurry')
import Frames
import Frames.CSV -- (RowGen(..), rowGen, columnNames, tablePrefix, rowTypeName)
-- import Data.Text
-- import Pipes.Core

-- import Language.Haskell.TH -- (runQ)
-- import Language.Haskell.TH.Syntax


-- q1path :: String
-- q1path = "april-5-2018/data/q1"


-- tableTypes "Row" "april-5-2018/data/test"


tableTypes' (rowGen "april-5-2018/data/q1"){
    rowTypeName = "Q1Row"
  , columnNames = [ "Label", "Count" ]
  , tablePrefix = "Q1"}

-- baz :: Q [Dec]
-- baz = runQ (
  -- tableTypes' (rowGen "april-5-2018/data/q1"){
  --   rowTypeName = "Q1Row"
  -- , columnNames = [ "Label", "Count" ]
  -- , tablePrefix = "Q1"}
  -- )

-- loadRows :: IO (Frame Q1Row)
-- loadRows = inCoreAoS (readTable q1path)


-- rowCount :: Record '[Q1Label, Q1Count] -> Double
-- rowCount = runcurry' (\n m -> fromIntegral m)


