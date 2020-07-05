--1
myWords :: String -> [String]
myWords ""= [""]
myWords(' ':xs) = myWords xs
myWords l = takeWhile (/=' ') l : (myWords (dropWhile (/=' ') l))

--2
firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
\ symmetry?"
sentences = firstSen ++ secondSen++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines[] = []
myLines('\n':xs) = myLines xs
myLines l = takeWhile (/='\n') l : (myLines (dropWhile (/='\n') l))

--3
myLines2 :: Char -> String ->[String]
myLines2 exp []  = []
myLines2 exp (x:xs) 
                    | x == exp = myLines2 exp xs
                    | otherwise = takeWhile (/=exp) (x:xs) : (myLines2 exp (dropWhile (/=exp) (x:xs)))

