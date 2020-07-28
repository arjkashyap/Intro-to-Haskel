-- Function composition
-- Remember in mathematics we would write someting like
--  (f 0 g)(x) =  f(g(x)) 
-- The above expression is saying: Call a function g with a parameter x and calling f on that result

-- We can do the function composition in haskell via . function
-- We want to take a list of numbers and negate them
-- one way to do this is: map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]  

negateList :: (Num a) => [a] -> [a]
negateList xs = map ( negate . abs ) xs

-- We can stack various function in this manner

sumNegTail :: [Num a] => []
sumNegTail xs = map ( negate . sum . tail ) xs