module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.Int (fromNumber) as N
import Data.Int (fromString) as S
import Data.Int (toNumber) as T
import Data.Int (round) as R
import Data.Int (even) as E
-- import Data.Int (quot) as Q
import Data.Int (pow) as P
import Data.Maybe

-- fromNumber :: Number -> Maybe Int
-- fromNumber val = N.fromNumber val 
-- main = logShow (fromNumber (12.97))

-- fromString :: String -> Maybe Int
-- fromString vall = S.fromString vall
-- main = logShow (fromString "123")

-- toNumber :: Int -> Number
-- toNumber num = T.toNumber num
-- main = logShow (toNumber 12)

-- round :: Number -> Int
-- round r = R.round r
-- main = logShow (round 12.98)

-- even :: Int -> Boolean
-- even e = E.even e
-- main = logShow (even 20)

-- quot :: Int -> Int -> Int
-- quot q w = Q.quot q w
-- main = logShow (quot 2 6)

pow :: Int -> Int -> Int
pow q w = P.pow q w
main = logShow (pow 2 3)
