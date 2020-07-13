-- Unlike other imperative languages, haskel does not have for, while loops
-- Most of the computations which require repetations in haskel are done via recursion

-- Lets write a maximum function 
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "List must have atleast one item"
maximum' [x] = x
maximum' (x:xs) 
    | x > maxTail = x
    | otherwise = maxTail
    where 
        maxTail = maximum' xs

-- An even clearer way to write this is using max function
listMax :: (Ord a) => [a] -> a
listMax [] = error "List must have atleast one item"
listMax [x] = x
listMax (x:xs) = max x (listMax xs)
