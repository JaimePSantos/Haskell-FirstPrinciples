isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = if x==revX then True else False where
    revX = reverse x

myAbs :: Integer -> Integer
myAbs x = if x<0 then y else x where
    y = -x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

x = (+)
ff xs = x w 1 where w = length xs

fff (a,b) = aa where aa = fst(a,b)
