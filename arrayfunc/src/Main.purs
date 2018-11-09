module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.Array (fromFoldable) as F
import Data.Array (toUnfoldable) as U
import Data.Array (singleton) as S
import Data.Array (range) as R
import Data.Array (replicate) as RR
import Data.Array (cons) as C
import Data.Array (snoc) as SS
import Data.Array (insert) as I
import Data.Array (head) as H
import Data.Array (tail) as TT
import Data.Array (init) as II
import Data.Array (findLastIndex) as L
import Data.Array (concat) as CC
import Data.Array (concatMap) as CM
import Data.String (split, Pattern(..), contains)
import Data.Array (findIndex) as FI
import Data.Maybe
import Data.Newtype (class Newtype)
import Data.Foldable
import Data.Unfoldable 


-- fromFoldable :: forall f. Foldable f => f ~> Array
-- fromFoldable v = F.fromFoldable v
-- main = logShow (fromFoldable  (Just 1))

-- toUnfoldable :: forall f. Unfoldable f => Array ~> f
-- toUnfoldable vl = U.toUnfoldable vl
-- main = logShow (([1,2,3,4,5]))

-- singleton :: forall f. f -> Array f
-- singleton s = S.singleton s
-- main = logShow (singleton 2)

-- range :: Int -> Int -> Array Int
-- range r t = R.range r t
-- main = logShow (range 2 5)

-- replicate :: forall f. Int -> f -> Array f
-- replicate i o = RR.replicate i o
-- main = logShow (replicate 2 "hello")

-- cons :: forall f. f -> Array f -> Array f
-- cons a s = C.cons a s
-- main = logShow (cons 1 [2,3,4])

-- snoc :: forall f. Array f -> f -> Array f
-- snoc a s = SS.snoc a s
-- main = logShow (snoc [1,2,3] 4)

-- insert :: forall f. Ord f => f -> Array f -> Array f
-- insert a s = I.insert a s
-- main = logShow (insert 10 [1,2,11,20,21])

-- head :: forall f. Array f -> Maybe f
-- head a = H.head a
-- main = logShow (head [1,2])

-- tail :: forall f. Array f -> Maybe (Array f)
-- tail s = TT.tail s
-- main = logShow (tail [1,2,3,4])

-- init :: forall f. Array f -> Maybe (Array f)
-- init a = II.init a 
-- main = logShow (init [1,2,3,4,5])

-- findLastIndex :: forall f. (f -> Boolean) -> Array f -> Maybe Int
-- findLastIndex a s = L.findLastIndex a s 
-- main = logShow (findLastIndex (contains $ (Pattern "b"))["b","bb","bbb","aaa"])

-- concat :: forall f. Array (Array f) -> Array f 
-- concat s = CC.concat s 
-- main = logShow (concat [[1,2,4,5,6],[1,2,5,6],[]])


-- concatMap :: forall a b. (a -> Array b) -> Array a -> Array b
-- concatMap a s = CM.concatMap a s 
-- main = logShow (concatMap (split (Pattern " "))["Hello Wolrd" , "Other Thing"])

findIndex :: forall a. (a -> Boolean) -> Array a -> Maybe Int
findIndex a s = FI.findIndex a s
main = logShow (findIndex (contains $ (Pattern "b"))["a", "bb", "b", "d"])

