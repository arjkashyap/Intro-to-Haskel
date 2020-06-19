-- Guards in haskel
-- Guards are a way of testing wheather some property is true or false
-- It sounds a lot similar to if/else but guards are useful when we have to 
-- evaluate a large number of conditions which can look a bit ugly 
-- when we use if/else


ageTell :: (Ord a, Num a) => a -> String
ageTell age
    | age <= 12 = "You're still a stupid kid . . ."
    | age <= 16 = "Whinny little teen . . "
    | age <= 20 = "Look who's bout to be a YA.. I bet you still stupid"
    | age <= 30 = "You wasting your 20s"
    | age <= 80 = "Death is upon you"
    | otherwise = "How come you still allive"

-- Guards are executed in the manner that the last condition found true, is 
-- returned without checking the next ones

maxNum :: (Ord a) => a -> a -> a
maxNum a b
    | a >= b = a
    | a < b = b
