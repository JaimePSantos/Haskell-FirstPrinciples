module Cipher where

import Data.Char

encode :: Char -> Int
encode x = ord (toLower(x)) - ord 'a'

shiftCae :: Char -> Int ->Int
shiftCae a b = mod((encode a)+b) 26 +ord 'a'

shiftUncae :: Char -> Int ->Int
shiftUncae a b = mod((encode a)-b) 26 +ord 'a'

cae :: String -> Int -> String
cae [] _ = []
cae(' ':xs) shift = ' ' : cae xs shift
cae (x:xs) shift = chr(shiftCae x shift) : cae xs shift

uncae :: String -> Int -> String
uncae [] _ = []
uncae(' ':xs) shift = ' ' : uncae xs shift
uncae (x:xs) shift = chr(shiftUncae x shift) : uncae xs shift

-- Note: Everything is turned to lower case.