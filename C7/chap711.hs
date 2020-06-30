--1
tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d = xLast `mod` 10

tensDigit2 x = snd $ (divMod.div x) 10 $ 10

hundsD x = snd $ (divMod.div x) 100 $ 100


--2
foldBool :: a -> a -> Bool -> a
foldBool = \x y z -> (
    case z of 
        False -> x
        True -> y)

foldBool2 x y z  
    | z = y
    | otherwise = x


--3
g f (a,c) = (f a, c )