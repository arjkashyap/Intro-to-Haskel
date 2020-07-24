-- We will make the collatz sequnce again
-- Now what we want to know is 
-- for all starting numbers between 1 and 100, 
-- how many chains have a length greater than 15


chain :: (Integral a) => a -> [a]
chain n
    | even n = n : chain (n `div` 2)
    | odd n = n : chain (n * 3 + 1)

numLongChains :: Int
numLongChains =  length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15


-- Using Lambdas
-- Lambdas are basically anonymous functions that 
--are used because we need some functions only once

-- In the above function, we made isLong function simply for 
-- fetermining the length. Instead we can use lambdas

numLongChains2 :: Int
numLongChains2 = length (filter (\xs -> length xs > 15) (map chain [1..100]))

-- Function takes a list of Numbers and returns the number div by 7
divBy7 :: [Int] -> [Int]
divBy7 xs = filter (\x -> x `mod` 7 == 0) xs

-- map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]  



-- Fold function:
-- Fold function is a map equivallent in haskell
-- It takes an binary function as a parameter, a starting value
-- and a list to fold

-- The binary function itself takes two params, a starting value of 
-- accumulator and the first element of list 

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs


-- Let us try to clone the elem function
elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys


-- Just as foldl eats up the list from the left side
-- foldr does the same thing from the right side.

-- $ function
-- $ sign has the lowest precedence
-- Whereas normal functions are left associative, $ functions are right assosiative
-- How does this help us ?
-- Consider the following function


sumAndSqrt :: Float 
sumAndSqrt = sqrt 4 + 4 + 1

-- The above function produces the result 7 because due to the left associativity,
-- sqrt is applied to 4 first and then added
-- f a b c = f(a) + b + c

sumAndSqrt2 :: Float
sumAndSqrt2 = sqrt $ 4 + 4 + 1

-- Here dollar function helps us to make the associativity right
-- thereby the result of expression on the right is applied to the function on the left

-- Lets write some more functions using this
-- sum ( filter ( >10 ) ( map ...) )
weirdSumFunc :: Float
weirdSumFunc = sum $ filter (>10) $ map (*2) [1..120]