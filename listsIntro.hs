-- In haskel lists are homegen

-- initialize list

someNum = [1, 2, 4, 5, 6]
otherNum = [9, 10, 11]

-- ++ operator is used to concat two lists
-- ++ operator also works with strings
mergeList a b = a ++ b

-- Appending can also be done via : operator which is faster

mergeListTwo a b = a : b

-- For getting a number from a list, you use !! operator followed by index
-- And yess there is no [x] operator in haskel
-- Same goies for string
getNum lst index = lst !! index

-- Comparing two lists
--  When using <, <=, > and >= to compare lists, they are compared 
--  in lexicographical order. First the heads are compared. If they are 
--  equal then the second elements are compared, etc
cmpList a b = a > b

-- More list functions
-- Returns length of list
-- length [5, 4, 2 , 1]

-- Check if the list is empty
-- null []

-- Take takes out as many numbers from the list
-- take 3 [5, 4, 3, 2, 1]
getFromFront x lst = take x lst

-- Ranges 
range = [1..30]
evenRange = [2, 4..30]
alphRange = ['a'..'z']

-- Get first 20 multiples of 13
-- SInce Haskel is lazy, it will now evaluate an infinit list
-- The function returns the first n numltiples of a number m
getNMultiples n m = take n [m, m*2..]

-- Producing more infinite lists
-- cycle takes a list and cycles it into an infinite lis
--repeat takes an element and produces an infinite list of just that element.
-- It's like cycling a list with only one element.


-- list comprehension
-- comprehension that replaces each odd number greater than 10 with "BANG!"
-- and each odd number that's less than 10 with "BOOM!".
-- If a number isn't odd, we throw it but of our list.
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- We can include several predicates with ,
-- We can have draw from multiple lists using multiple pridicates
-- In the below list, we want to get the prouct of all the odd and even number
-- from 1 to n which are not div by 5 and are bigger than 10
mulOddEven n = [o*e | o <- [1, 3..n] , e <- [2, 4..n], o*e `mod` 5 /= 0, o*e > 10 ]


removeLowerCase str = [ s | s <- str, s `elem` ['A'..'Z'] ]

-- Nested list comp are also possible
-- In the follwing func, we remove odd numbers from a 2D list

removeOdd matrix = [ [x | x <- row , even x] | row <- matrix ]

