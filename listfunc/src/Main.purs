module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.List
import Data.Maybe
import Data.List (null) as N 
import Data.List (insertBy) as I 
import Data.List (index) as II
import Data.List (elemIndex) as E 
import Data.List (elemLastIndex) as EL
import Data.List (findIndex) as F 
import Data.String (contains, Pattern(..))
import Data.List (insertAt) as IA
import Data.List (deleteAt) as D 
import Data.List (updateAt) as U 
import Data.List (reverse) as R 
import Data.List (sort) as S 
import Data.List (group) as G 
import Data.List.Types (NonEmptyList(..))
import Data.List (union ) as U 
import Data.List (delete) as DD
import Data.List (difference) as DF 
import Data.List (intersect) as III
import Data.List (transpose) as T 

-- null :: forall  a. List a -> Boolean
-- null s = N.null s
-- main = logShow (null (1 : 2 : 3 : 4 : Nil))

-- insertBy :: forall a. (a -> a -> Ordering) -> a -> List a -> List a 
-- insertBy x s n = I.insertBy x s n 
-- main = logShow (insertBy (ord 1 (2 : 3 : 4 : Nil)))

-- index :: forall a. List a -> Int -> Maybe a 
-- index s a = II.index s a 
-- main = logShow (index (1 : 2 : 3 : 4 : Nil) 2 )

-- elemIndex :: forall a. Eq a => a -> List a -> Maybe Int
-- elemIndex s d = E.elemIndex s d 
-- main = logShow (elemIndex 2 (1 : 2 : 3 : 4 : Nil))

-- elemLastIndex :: forall a. Eq a => a -> List a -> Maybe Int
-- elemLastIndex a d = EL.elemLastIndex a d 
-- main = logShow (elemLastIndex 2 (1 : 2 : 3 : 2 : 4 : Nil))

-- findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
-- findIndex a s = F.findIndex a s 
-- main = logShow (findIndex (contains $ (Pattern 1 )) (1 : 2 : 3 : 4 : Nil))

-- insertAt :: forall a. Int -> a -> List a -> Maybe (List a)
-- insertAt a s d = IA.insertAt a s d 
-- main = logShow (insertAt 1 3 (1 : 2 : 3 : 4 : Nil))

-- deleteAt :: forall a. Int -> List a -> Maybe (List a)
-- deleteAt a  d = D.deleteAt a  d 
-- main = logShow (deleteAt 1 (1 : 2 : 1 : 4 : 5 : Nil))

-- updateAt :: forall a. Int -> a -> List a -> Maybe (List a)
-- updateAt a s d = U.updateAt a s d 
-- main = logShow (updateAt 1 3 (1 : 2 : 3 : 4 : Nil))

-- reverse :: List ~> List
-- reverse a = R.reverse a 
-- main = logShow (reverse (1 : 2 : 3 : 4 : Nil))

-- takeEnd :: forall a. Int -> List a -> List a 
-- takeEnd s d = TE.takeEnd s d 
-- main = logShow (takeEnd 1 (1 : 2 : 3 : 4 : Nil))

-- sort :: forall a. Ord a => List a -> List a 
-- sort a = S.sort a 
-- main = logShow (sort (1 : 2 : 5 : 4 : Nil))

-- group :: forall a. Eq a => List a -> List (NonEmptyList a)
-- group a = G.group a 
-- main = logShow (group (1 : 1 : 2 : 2 : 1 : Nil))

-- union :: forall a. Eq a => List a -> List a -> List a 
-- union a s = U.union a s 
-- main = logShow (union (1 : 4 : 5 : 6 : 7 : Nil )(1 : 4 : 5 : 6 : 8 : Nil))

-- delete :: forall a. Eq a => a -> List a -> List a 
-- delete a s = DD.delete a s 
-- main = logShow (delete 1 (1 : 2 : 3 : 4 : Nil))

-- difference :: forall a. Eq a => List a -> List a -> List a 
-- difference a s = DF.difference a s 
-- main = logShow (difference (1 : 2 : 3 : 4 : Nil)(1 : 2 : 3 : 4 : 5 : Nil))

-- intersect :: forall a. Eq a => List a -> List a -> List a 
-- intersect a s = III.intersect a s 
-- main = logShow (intersect (1 : 2 : 3 : Nil)(1 : 2 : 3 : 4 : 5 : Nil))

transpose :: forall a. List (List a) -> List (List a)
transpose a = T.transpose a 
main = logShow (transpose ((1:2:3:Nil) : (4:5:6:Nil) : Nil))

