myGreeting::String
myGreeting = "hello" ++ " world!"

hello = "hello"
world = "world!"

takeDrop :: String -> Char
takeDrop x = head (drop 2 x)
k =takeDrop "curry is awesome!"

takeDrop2 :: Int -> Char
takeDrop2 x = head(drop x a) where
    a = "curry is awesome"


    


main :: IO()
main = do
    putStrLn myGreeting
    putStrLn secondGreeting
    putStrLn thirdGreeting
    print k
    where 
        secondGreeting = concat[hello," ", world]
        thirdGreeting = (++)"hello"((++)" " "world!")


