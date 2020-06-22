-- Using the where keyword within our gaurds can save us from 
-- Repeating our code. Let us write a bmi calculator
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2 

-- Where keywords support multiple definations
-- We could go a bit further with our where usage

bmiTeller :: (RealFloat a) => a -> a -> String
bmiTeller weight height
    | bmi <= skinny = "You're underweight, you emo, you!" 
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

-- Even further, where can be used to define the functions
-- The following function calculates bmis for a list of params
calcBmi :: (RealFloat a) => [(a, a)] -> [a]
calcBmi xs = [ bmi (fst x) (snd x) | x <- xs ]
    where bmi w h = w / h ^ 2

-- Where bindings can also be nested


-- Lets keyword
-- Much like where, let lets you bind a value to a variable accessible 
-- locally accross a function. 
cylinderSA :: (RealFloat a) => a -> a -> a
cylinderSA r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r^2
    in sideArea + ( 2 * topArea )

-- The values binded via top area 
-- Difference b/w where and let aside from the fact 
-- that let is binding first and usage later is
-- let is an expression much like if

  