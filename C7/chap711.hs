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



--4 5 6

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

roundTrip2 :: (Show a, Read a) => a -> a
roundTrip2 = (read . show) 

roundTrip3 :: (Show a, Read b) => a -> b
roundTrip3  = read.show

main = do
    print (roundTrip 4)
    print (id 4)
