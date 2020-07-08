import Data.Char

filterUp :: String -> String
filterUp = filter (\x-> isUpper x)

upFirst :: String -> String
upFirst [] = []
upFirst (x:xs) = toUpper x : xs

upAll :: String -> String
upAll [] = []
upAll (x:xs) = toUpper x : upAll xs

--upAllAlt = map toUpper

upOnlyFirst:: String -> Char
upOnlyFirst = (toUpper.head)

