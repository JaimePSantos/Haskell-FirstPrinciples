funcC x y = if(x>y) then x else y

funcC1 x y = 
    case z of 
        True -> x
        False -> y
    where z = x > y 

ifEvenAdd2 n = if even n then (n+2) else n

ifEvenAdd21 n = 
    case z of 
        True -> n+2
        False -> n
    where z = even n

nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0

pal xs
    | xs == reverse xs = True
    | otherwise = False

numbers x
 | x < 0 = -1
 | x == 0 = 0
 | x > 0 = 1
