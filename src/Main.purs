module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log, CONSOLE)

main :: forall eff. Eff (console :: CONSOLE | eff) Unit
main = log "Hello, world!"

