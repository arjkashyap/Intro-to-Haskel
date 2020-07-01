-- Haskel can take functions as arguments as well as return types
-- A function doing either of those is called a high order func
-- These are very powerful means to solve problems in haskel

-- Curied Functinons:
-- In haskel, the functions only take one argument
-- All the time that we applied more than one parameter to a function, 
-- those were Curried functions

-- Putting space between parameters is simply an application
-- Space is an operator with the highest precedence

mulThree ::  (Num a) => a -> ( a -> (a -> a) )
mulThree x y z = x * y * z

-- Notice how in the above function we defined the type
-- It basically says that the function takes one param x and returns
-- a function which takes the paramet x and multiplies it with y and so forth
-- The thing before a -> is a param that function takes and after the -> is what it returns

-- The advantages of a curried function becomes clear when we talk about partial applications of a function
-- If we call a function with too few param, we get back a partially applied function i;e a function that takes as many param as we left


divBy10 :: (Floating a) => a -> a
divBy10 = (/10)
-- In the above, we have used what is known as sections



