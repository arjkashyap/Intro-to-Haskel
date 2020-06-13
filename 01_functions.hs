-- Writing basic haskel functions --
-- Functions in haskel do not follow any particular order
squareMe x = x * x

-- Calling antoher function
squareUs x y = squareMe x + squareMe y

-- Conditions ---
--- Else statement is mandatory in haskel ---
squareSmallNum x = if x > 100
                    then x
                    else x*2

-- incerments the above function
-- This is written to demonstrate that the if statement 
-- acts as an expression
incSquare x = (if x > 100 then x else x*x) + 1

-- ' is a valid chracter for function name
-- Functions cannot begin with upper case letter
conanO'Brien = "Hey its me, Conan O' Brien!!"
