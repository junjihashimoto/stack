module Concat where

import Prelude hiding (append, null)
import Str

concat :: [Str] -> Str
concat xs = foldr append null xs
