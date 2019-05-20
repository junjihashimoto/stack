{-# LANGUAGE NumDecimals #-}

import Distribution.Simple
import Distribution.Simple.Build
import Distribution.Types.LocalBuildInfo
import Distribution.Types.TargetInfo

import Text.Show.Pretty
import Control.Concurrent

main = defaultMainWithHooks simpleUserHooks
  { buildHook = \pd lbi uhs bfs -> do
      -- pPrint $ targetCLBI <$> allTargetsInBuildOrder' pd lbi
      -- threadDelay 1e6
      buildHook simpleUserHooks pd lbi uhs bfs
  }
