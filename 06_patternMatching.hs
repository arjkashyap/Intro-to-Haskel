-- Pattern matching comprises specifying patterns and comforming it with data
-- And deconsturcting it if the two matches

--When defining functions, we can define sepreate function bodies for diff pattns
--This leads to cleaner code

-- The following function checks if the arg is a seven
checkSeven ::(Integral a ) =>  a -> String
checkSeven 7 = "Lucky number seven !!!"
checkSeven x = "You're out of luck mate !"

-- Using this, we can define a factorial function
factorial:: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- WHen we define functions in this manner, whe whould always have a catch all
-- method

-- The following method takes two points in 2d space and adds em together
addPoints :: (Num a) => (a, a) -> (a, a) -> (a, a)
addPoints (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- _ Denotes that we don't know or care what this variable is
-- In the below lines, we are writing a function to add 3D points
-- By defining first, second and third pointer

first :: (Num a) => (a, a, a) -> a
first (x, _, _) = x

second :: (Num a) => (a, a, a) -> a
second (_, y, _) = y


third :: (Num a) => (a, a, a) -> a
third (_, _, z) = z


addPoints3D :: (Num a) => (a, a, a) -> (a, a, a) -> (a, a, a)
addPoints3D p1 p2 = (first p1 + first p2, second p1 + second p2, third p1 + third p2)

-- In haskel lists, suppose we have [1, 2, 3, 4]. This can be represented as 1:2:3:[]
-- The former the just a syntactic sugar. We can use this logic to bind elements to our 
-- Variables, combined with the fact that lists can also be used in patter matching
-- Lets write our own head function.
-- If you want to bind _ to several vars, you have to use ()
getHead :: [a]-> a
getHead [] = error "The list is empty . . "
getHead (x:_) = x



-- Another generic list function for explanation
-- Member of show TC can be presented as a string
getItems :: (Show a) => [a] -> String
getItems [] = "List is empty"
getItems (x:[]) = "List has only " ++ show x
getItems (x:y:[]) = "List has two items " ++ show x  ++ " and " ++ show y
getItems (x:y:_) = "List is long and full of elements"


-- Implementing our own lenght function using recurssion and pattern matching
len :: (Num b) => [a] -> b
len [] = 0
len (_:item) = 1 + len item

-- Similarly let us implement a sum function
sumIt ::  (Num a) => [a] -> a
sumIt [] = 0
sumIt (x : xs) = x + sumIt xs