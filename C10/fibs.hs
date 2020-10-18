fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x

scanEx1 = take 20 fibs
scanEx2 = takeWhile(<100) fibs
scanEx3 x = take x $ scanl (*) 1 [2..]