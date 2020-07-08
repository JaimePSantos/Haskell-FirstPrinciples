module MyFuncs where

--1
myOr :: [Bool] -> Bool
myOr [] = False
myOr(x:xs) = x || myOr xs

--2
myAny :: (a->Bool) -> [a] ->Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

--3
myElem _ [] = False
myElem a l = myAny (==a) l 

myElem2 _ [] = False
myElem2 a (x:xs) = (a==x) || myElem a xs

--4
myReverse :: [a] -> [a]
myReverse [] = []
myReverse(x:xs) = myReverse xs ++ [x]

--5
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

--6
squishMap :: (a->[b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

--7
squishAgain:: [[a]] -> [a]
squishAgain [] = []
squishAgain (x:xs) = squishMap (id) (x:xs)

--8
myMaximumBy :: (a->a->Ordering) -> [a] -> a
myMaximumBy _ (x:[]) = x
myMaximumBy f (x:y:xs)
                | f x y == GT = myMaximumBy f (x:xs)
                | otherwise = myMaximumBy f(y:xs)

--9
myMinimumBy :: (a->a->Ordering) -> [a] -> a
myMinimumBy _ (x:[]) = x
myMinimumBy f (x:y:xs)
                | f x y == LT = myMinimumBy f (x:xs)
                | otherwise = myMinimumBy f(y:xs)

--10
myMaximum::(Ord a)=>[a]->a
myMaximum = myMaximumBy(compare)

myMinimum::(Ord a)=>[a]->a
myMinimum = myMinimumBy(compare)
