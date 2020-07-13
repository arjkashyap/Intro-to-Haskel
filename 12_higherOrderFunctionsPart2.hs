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
