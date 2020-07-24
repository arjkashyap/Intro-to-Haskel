-- We will make the collatz sequnce again
-- Now what we want to know is 
-- for all starting numbers between 1 and 100, 
-- how many chains have a length greater than 15


chain :: (Integral a) => a -> [a]
chain n
    | even n = n : chain (n `div` 2)
    | odd n = n : chain (n * 3 + 1)

