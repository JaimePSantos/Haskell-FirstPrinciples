-- First Part
-- -- 1
import Data.List

stops :: [Char]
stops  = "pbtdkg"
vowels :: [Char]
vowels = "aeiou"

ex1A :: [(Char, Char, Char)]
ex1A = [(x,y,z) | x<- stops , y<-vowels , z<-stops]
ex1B :: [(Char, Char, Char)]
ex1B = filter((=='p').(\(x,y,z) -> x )) ex1A
-- -- -- ex1C exactly the same as 1A but  x = noun, y = verb, z = noun.

-- -- 2
seekritFunc :: String -> Int
seekritFunc x = div (sum $ map length $ words x) (length (words x))
-- -- This function gives us the average number of letters per word.

-- -- 3
avgWord ::(Fractional b)=> String -> b 
avgWord x = (realToFrac $ sum $ map length $ words x) / (fromIntegral $ genericLength $words x ) 

-- Rewriting old functions using folds
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) | x == False = False
             | otherwise = myAnd xs

myAnd' :: [Bool] -> Bool
myAnd' [] = True
myAnd' (x:xs) =  x && myAnd' xs

myAnd'' :: [Bool] -> Bool
myAnd'' = foldr (&&) True

-- -- 1
myOr :: [Bool] -> Bool
myOr = foldr (||) False

-- -- 2
myAny :: (a->Bool) -> [a] -> Bool
myAny f = foldr ((||).f) False

-- -- 3
myElem:: Eq a=>a->[a]-> Bool
-- myElem x [] = False
-- myElem x (y:ys) | x==y = True
                -- | otherwise = myElem x ys

myElem x = foldr ((||).(==)x) False

myElem':: Eq a=>a->[a]-> Bool
myElem' x  = any(==x)

-- -- 4
myRev :: [a] -> [a]
myRev = foldl (flip(:)) []

-- -- 5
myMap :: (a->b)->[a]->[b]
myMap f = foldr ((:).f) []

-- -- 6
myFilter :: (a->Bool) -> [a] -> [a]
myFilter f = foldr(\a b -> if f a then a:b else b) []

-- -- 7
squish :: [[a]] -> [a]
-- squish = foldr (flip(foldr(:))) [] 
-- perceber melhor esta soluçao
squish = foldr(++) []

-- -- 8
squishMap :: (a->[b]) ->[a]->[b]
-- squishMap f = foldr((++).f) []
squishMap f = foldr(\x acc-> f x ++ acc) []

-- -- 9
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- -- duvidas
-- -- 10
myMaximumBy::(a->a-> Ordering)->[a]->a
myMaximumBy f xs = foldr (\a b -> if f a b == GT then a else b) (last xs) xs

-- -- 11
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f xs = foldr (\a b -> if f a b == LT then a else b) (last xs) xs