-- Haskel being a purely functional programming language, does not 
-- Here you do computations in Haskell by declaring what something
-- is instead of declaring how you get it
-- Each component is a definition
-- Therefore it does not support loops

-- Below we gonna define a function that takes max out of a list
maximum' :: ( Ord a ) => [a] -> a
maximum' [] = error "List Empty !!"
maximum' [x] = x
maximum' (x: xs)
    | x > maxTail = x
    | otherwise = maxTail 
    where 
       maxTail = maximum' xs

-- The above function can also be written as
maximum_rec' :: ( Ord a ) => [a] -> a
maximum_rec' [] = error "List empty !!"
maximum_rec' [x] = x
maximum_rec' (x:xs) = max x (maximum_rec' xs)

-- Replicate function takes two arfs, a and b
-- Returns a list with a repeated b times
replicate' :: (Num i, Ord i ) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate' ( n - 1 ) x

-- Next we will try to replicate take function
-- It takes two args n and xs and returs a list 
-- containing n number of elements from xs
take' :: (Ord n, Num n) => n -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs 

-- In the above function, notice how we ommit the otherwise
-- This is because, the function will not run if we put n > len lst

-- Replicating reverse function
-- takes a list as an argument and reverses it
reverse' :: [a] -> [a]
reverse' [] = []
reverse' [x] = [x]
reverse' (x:xs) = (reverse' xs) ++ [x]

-- Replicating zip function
zip' [] _ = []
zip' _ [] = []
zip (x:xs) (y:ys) = (x, y): zip' xs ys


-- Implementing Quick sort in haskel
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
    let smallerElements = quickSort [ a | a <- xs, a <= x ]
        largerElements = quickSort [ a | a <- xs, a > x ]
    in smallerElements ++ [x] ++ largerElements









