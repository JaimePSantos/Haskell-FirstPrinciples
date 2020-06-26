addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f n = n+1

addOneIfOdd1 n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n+1


addFive x y = (if x > y then y else x) + 5

addFive1 = \x y -> (if x > y then y else x) + 5


mflip f = \x -> \y -> f y x
mflip1 f x y = f y x


f :: (a, b, c)-> (d, e, f)-> ((a, d), (c, f))
f (a,b,c) (d,e,f) = ((a,d),(c,f))