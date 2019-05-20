module Str where

import qualified Data.ByteString as BS

type Str = BS.ByteString

null = BS.empty
append = BS.append
