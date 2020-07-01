cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y
-- fill in the types
flippy = flip cattyConny
appedCatty = cattyConny "woops"
frappe = flippy "haha"

--recursion
--1
sumAllNum :: (Eq a, Num a) => a -> a
sumAllNum n = sumAllNumAux 1 n
    where sumAllNumAux a n
             | n==0 = 0
             | otherwise = a + sumAllNumAux (a+1) (n-1)

--2
mult :: (Integral a) => a -> a -> a
mult x 0 = 0
mult x n = x + mult x (n-1)

--divided by
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
    where go n d count
            | n < d = (count, n)
            | otherwise = go (n - d) d (count + 1)

data DividedResult = 
    Result Integer 
    | DividedByZero

dividedBy2 num denom = go num denom 0
    where go n d count 
            | n<0 && n<d = go (n+d) d (count +1)
            | (n>=0 || n>=d) = (-count,n)
