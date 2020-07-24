-- Functions can take functions and also return functions
-- To illustrate this, we will take the following example

applyFuncTwice :: (a -> a) -> a -> a
applyFuncTwice f x = f(f x)

-- In the above function declaration, the parenthesis are mandatory 
-- ApplyFuncTwice takes two args
-- 1: A function which takes an arg a and returns a 
-- 2: Anohter arg x
-- Returns a

-- So what happens above is that we can pass a function to argument and apply that function to x

-- Now we will use higher order programming to implement zip with
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- Note that the args a b c can be of different types as well as same types
-- If we had used only a'(s) instead, we'd not been able to use args of different types

--  Flip simply takes a function and returns a function that is like our original function, only the first two arguments are flipped
flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x


-- Map takes a function and a list, and applies that function
-- every element in that list
-- The type signature of map says that
-- It takes a function which takes an element a and spits out b
-- and it takes a list of a, and gives out a list of b
map' :: ( a -> b ) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

-- Filter is another high order function which takes a predicate
-- and a list, returns the element which match true against that predicate
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter' p xs
    | otherwise = filter' p xs


-- We can write quick sort in a more readable way now
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = 
    let smallerElms = quickSort ( filter ( <= x) xs ) 
        greaterElms = quickSort ( filter ( > x) xs )
    in smallerElms ++ [x] ++ greaterElms

-- Another high order function is take while
-- it takes a predicate and a list and returns the elemnets while 
-- The predicate holds true. Once it is false, it stop

-- We will write a function that finds the sum of all odd squares that are smaller than 10,000
sumOddSquares =  takeWhile (<10000) ( map (^2) (filter (odd) [1..]) )


-- Now we will be generating collatz sequnce from a number
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n : chain ( n `div` 2 )
    | odd n = n:chain (n*3 + 1)  