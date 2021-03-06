{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE BangPatterns #-}
-- | Configuration

module Config where

import Control.Lens

-- | Configuration record
data Config = Config
  { _cHelp :: !Bool
  , _cNextDayHour :: !Int
  , _cInterval :: !Int
  , _cPort :: !Int
  } deriving (Eq, Show)

makeLenses ''Config

defaultConfig :: Config
defaultConfig =
  Config False 14 (1000000 * 60 * 30) 5007
