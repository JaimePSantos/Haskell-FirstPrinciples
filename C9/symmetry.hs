myWords :: String -> [String]
myWords ""= [""]
myWords(' ':xs) = myWords xs
myWords l = takeWhile (/=' ') l : (myWords (dropWhile (/=' ') l))