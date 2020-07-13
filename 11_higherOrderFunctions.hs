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


-- A core part of higher order function is returning functions from a function
multBy4 :: (Num a) => a -> a
multBy4 x = x * 4

listTimes4 :: (Num a) => [a] -> [a]
listTimes4 [] = []
listTimes4 (x:xs) = multBy4 x : listTimes4 xs

-- The above function can also be used with map
-- Map is a high order function which takes first parm 
-- as a function and second parm as a list. 
-- It then applies that function to the list

listTimes4' :: (Num a) => [a] -> [a]
listTimes4' x = map multBy4 x

-- To make partial functions clear let us take another ex
takeFirst5 :: (Num a ) => [a] -> [a]
takeFirst5 = take 5
-- If we run the above function, it will take 5 elements out of a list
-- But How ? We did not supply a list variable to it ?
-- This is because in takeFirst5 functinon defination we partially applied take
-- take has 2 args n xs. we Only gave n so now it is waiting for the second arg
-- A call like take 5 list is really an expression consisting of two function 
-- calls; take 4 returns a new function which is then applied to primes (the equivalent
-- explicitly parenthesized expression is (take 5) list


divBy10 :: (Floating a) => a -> a
divBy10 = (/10)
-- In the above, we have used what is known as sections
-- An infix function can be partaially applied by using sections
-- Simply surrond the function with parenthesis and supply 
-- only a single paraemert

isUpperAlphanum :: Char -> Bool  
isUpperAlphanum = (`elem` ['A'..'Z'])  










