import Data.Time
data DatabaseItem= DbString String
                  | DbNumber Integer
                  | DbDate UTCTime 
                  deriving(Eq,Ord,Show)

theDatabase::[DatabaseItem]
theDatabase= [DbDate( UTCTime( fromGregorian 1911 5 1)(secondsToDiffTime 34123)),
             DbNumber 9001,
             DbNumber 1,
             DbString"Hello, world!",
             DbDate(UTCTime(fromGregorian 1921 5 1)(secondsToDiffTime 34123))]

--1
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate list =  [x | (DbDate x) <- list]

--2
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber list = [x |(DbNumber x) <- list]

--3
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum.filterDbDate


--4
sumDb :: [DatabaseItem] -> Integer
sumDb list = foldr (+) 0((\x-> filterDbNumber x) list)
-- sumDb list = foldr (+) 0 sumList
      -- where sumList = filterDbNumber list

--5
avgDb :: [DatabaseItem] -> Double
avgDb list = (fromIntegral $ sumDb list) / (fromIntegral $ length $ filterDbNumber list)