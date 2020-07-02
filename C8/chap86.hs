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

data DividedResult =  Result Integer | DividedByZero deriving Show

dividedBy2 num denom  
           | denom == 0 = (DividedByZero,DividedByZero)
           | otherwise = go num denom 0
                where go n d count 
                        | n>0 = divPos n d count
                        | otherwise =  divNeg n d count
                        where divPos n d count
                                | n<d && d>0 = (Result (count), Result n)
                                | n>=d && d>0 = divPos (n-d) d (count+1)
                                | otherwise = divPosNeg n d count
                                    where divPosNeg n d count
                                            | n>=d || d<0 = (Result(-count), Result n)
                                            |otherwise = divPosNeg (n+d) d (count+1)


                              divNeg n d count
                                | n<0 && n<d = divNeg (n+d) d (count +1)
                                | otherwise = (Result(-count),Result n)

dividedBy3 _ 0 = DividedByZero
dividedBy3 num denom = go num denom 0 1 where
        go n d count sign
           | n < 0 = go (-n) d count (-sign)
           | d<0 = go n (-d) count (-sign)
           | n< d = Result(sign * count)
           | otherwise = go (n-d) d (count+1) sign


--McCarthy 91 function
mc91 n
   | n > 100 = n-10
   | otherwise = mc91(mc91(n+11))