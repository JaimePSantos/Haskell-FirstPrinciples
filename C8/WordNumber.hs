module WordNumber where

import Data.List (intersperse)


digitToWord::Int->String
digitToWord n = digitToWordAux n 0 list 
                          where 
                            digitToWordAux _ _ [] = "NaN"
                            digitToWordAux n i (x:xs)
                                 | i == n = x
                                 | otherwise = digitToWordAux n (i+1) xs
                            list = ["Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine"]

digits :: Int -> [Int]
digits 0 = []
digits n = digits (div n 10)++[mod n 10]

wordNumber :: Int -> String
wordNumber n = concat(intersperse "-" list)
                where list = wordList(digits n)
                        where wordList [] = []
                              wordList(x:xs) = digitToWord x : wordList xs