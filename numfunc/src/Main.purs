module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.Maybe
import Data.Number (fromString) as S
import Data.Number (nan) as N 
import Data.Number (isNaN) as IN
import Data.Number (infinity) as Y
import Data.Number (isFinite) as F

-- fromString :: String -> Maybe Number 
-- fromString val = S.fromString val
-- main = logShow (fromString "500.98")

-- nan :: Number
-- nan = N.nan
-- main = logShow (nan)

-- isNaN :: Number -> Boolean
-- isNaN v = IN.isNaN v
-- main = logShow (isNaN 12E3)

-- infinity :: Number
-- infinity = Y.infinity
-- main = logShow (infinity)

isFinite :: Number -> Boolean
isFinite vl = F.isFinite vl
main = logShow (isFinite  12e34)