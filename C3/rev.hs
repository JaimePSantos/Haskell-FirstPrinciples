module Reverse where
    myRev :: String -> String
    myRev x = drop 9 x ++ take 4 (drop 5 x) ++ take 5 x
    x = "curry is awesome"
    
    main :: IO()
    main = print (myRev x)