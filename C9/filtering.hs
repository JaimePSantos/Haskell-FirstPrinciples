ex1 = filter (\x -> rem x 3 == 0) (enumFromTo 1 30) 
ex2 =  (length.filter(\x -> rem x 3 == 0)) (enumFromTo 1 30)

myFilter :: String -> [String]
myFilter str = filter (\x -> (not.elem x) ["the","a","an"]) $ words str 