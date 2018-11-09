module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.Maybe (maybe) as M 
data Maybe a 
maybe :: forall a b. b -> (a -> b) -> Maybe a -> b
maybe a d = M.maybe a d
main = logShow (maybe b _ Nothing)
