module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.String (take) as T
import Data.String (drop) as D
import Data.String (stripPrefix) as S
import Data.String (length) as L 
import Data.String (splitAt) as SS
import Data.String (joinWith) as J 
import Data.String (toUpper) as U
import Data.String (null) as N 
import Data.String (Pattern(..), Replacement(..))
import Data.String (indexOf) as IO
import Data.String (contains) as C
import Data.String (replace) as R
import Data.Newtype (class Newtype)
import Data.Maybe

take :: Int -> String -> String
take t tt = T.take t tt
-- main = logShow (take 4 "b AA CC A")

-- drop :: Int -> String -> String
-- drop d dd = D.drop d dd
-- main = logShow (drop 5 "AAA bbb c")

-- length :: String -> Int
-- length s = L.length s 
-- main = logShow (length "bb AA CC") 

-- splitAt :: Int -> String -> { before :: String, after :: String }
-- splitAt a s = SS.splitAt a s
-- main = logShow (splitAt 3 "AA CC SSS CCC" Just { before "A" , after })

-- joinWith :: String -> Array String -> String
-- joinWith a s = J.joinWith a s 
-- main = logShow (joinWith "," ["apple","banana","orange"])

-- toUpper :: String -> String
-- toUpper a = U.toUpper a 
-- main = logShow (toUpper "hello")

-- null :: String -> Boolean
-- null = N.null
-- -- main = logShow (null "")

-- stripPrefix :: Pattern -> String -> Maybe String
-- stripPrefix a s = S.stripPrefix a s 
-- main = logShow (stripPrefix (Pattern "https:")"https://google.com")

-- splitAt :: Int -> String -> {before :: String, after :: String }
-- splitAt a s {before: take a s, after: take a s} = SS.splitAt a s {before: take a s, after: take a s}
-- main = logShow (splitAt 3 "b AA c A" Just { before: "b 𝐀", after: "𝐀 c 𝐀" })

-- indexOf :: Pattern -> String -> Maybe Int
-- indexOf a s = IO.indexOf a s 
-- main = logShow (indexOf (Pattern "A") "b AA CC A")

-- contains :: Pattern -> String -> Boolean
-- contains a s = C.contains a s 
-- main = logShow (contains (Pattern "needle") "haystack with needle")

replace :: Pattern -> Replacement -> String -> String
replace a s e = R.replace a s e 
main = logShow (replace (Pattern "<=")(Replacement "<")"a <= b <= c")