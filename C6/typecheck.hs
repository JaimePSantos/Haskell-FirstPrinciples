-- 1
data Person = Person Bool deriving Show

printPerson:: Person -> IO()
printPerson person = putStrLn (show person)

-- 2
data Mood = Blah | Woot deriving (Show,Eq,Ord)

settleDown x = if (x==Woot) then Blah else x

-- 4
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq,Show)

-- 5
data Rocks = Rocks String deriving (Eq, Show,Ord)

data Yeah = Yeah Bool deriving (Eq, Show,Ord)

data Papu = Papu Rocks Yeah deriving (Eq, Show,Ord)

-- New 1
i:: a ; i = undefined
