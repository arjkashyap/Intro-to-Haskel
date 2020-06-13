-- Haskel has a typesystem i;e type of every data is known at compile time
-- However, unlike most statically typed languages, it has type inference 
-- i;e when we write a number, we don't have to specify it, Haskel will infere it on its own

-- :: is read as 'has type of' and is used to explicitly define type

-- A string is a list of char as we know
-- removeUpperCase takes a [char] and returns a [char]
removeUpperCase :: [Char] -> [Char]
removeUpperCase st = [ s | s <- st , s `elem` ['a' .. 'z'] ]

getAvg :: [ Int ] -> Int
getAvg lst = (sum lst `div` length lst)

-- writing functions with multiple inputs
-- here is a function that takes 3 numbers and sums em all
-- the return type is always the last term in the type declaration
sumThreeNum :: Int -> Int -> Int -> Int
sumThreeNum a b c = a + b + c

-- Int specifies Integer but its bounded and has a range
-- Integer is an unbounded integer and generally more efficient
factorial :: Integer -> Integer
factorial n = product [1 .. n]

-- Float is a real floating point with a single precision
circumfrence :: Float -> Float
circumfrence r = 2 * pi * r

-- Double is a real floating point with double the precision
circumfrenceAcc :: Double -> Double
circumfrenceAcc r = 2 * pi * r

-- generic data type
-- a denotes a generic data type meaning the data could have any type
someRandomData :: a -> a
someRandomData x =  x
