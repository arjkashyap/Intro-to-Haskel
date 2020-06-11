-- A tuple does not have to be homogen.
--

-- Make a random tuple
randTuple = (1, "random tuple")

-- Tuples are great when you know the kind of data to expect for a list
-- Suppose we want to make a Name and age table

nameAge = ("Arjun", 22)

-- A tupple holding two values is called a pair
-- Elelments in a pair can be accesed by fst and snd method

name = fst nameAge
age = snd nameAge

-- zip is a function used to make a pairs out of two lists
-- it joins the elements at the same indexes 

makePairs x y = zip x y

-- Notic how the longer list gets spliced by the shorter one
alphaNum = zip [1..] ['A'..'Z']

-- we would like to get a triangle, whose parameter is 24, 
-- and all sides are equal to or smaller than 10
triangle = [(a, b, c) | a <- [1..10], b <- [1..10] , c <- [1..10] , a^2 + b^2 == c^2 , a + b + c == 24]
