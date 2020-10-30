data Price = Price Integer deriving(Eq,Show)
data Manufacturer = Mini | Mazda | Tata deriving (Eq, Show)
data Airline = PapuAir | Catapults | TakeYourChances deriving (Eq, Show)
data Vehicle = Car Manufacturer Price | Plane Airline deriving (Eq,Show)

myCar :: Vehicle
myCar = Car Mini (Price 1400)
urCar :: Vehicle
urCar= Car Mazda(Price 20000)
clownCar :: Vehicle
clownCar= Car Tata(Price 7000)
doge :: Vehicle
doge= Plane PapuAir

-- 2
isCar :: Vehicle -> Bool
isCar(Car _ _) = True
isCar(_) = False

isPlane :: Vehicle -> Bool
isPlane(Plane _) = True
isPlane(_) = False

areCars::[Vehicle] -> [Bool]
-- areCars [] = True
areCars = map isCar

-- 3
getManu :: Vehicle -> Manufacturer
getManu(Car m _) = m 