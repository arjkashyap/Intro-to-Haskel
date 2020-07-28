-- Haskell STL is split into various modules
-- The syntax for importing modules is very simple in haskel
-- We can import the List module and use the

-- We will check some functions out of the standard lib now
-- If we want to import the whole module, we don't include the brackets part and simply go
-- import Data.List

-- If we want to include all modules except say module sort we do 
-- import Data.List hiding (sort)

import Data.List 

-- handling name clashes
-- Data.Map includes several function whose name clashes with prelude
-- We handle this via
-- As m does the same that it does in python
-- Now to call Map module function we can do M.function
import qualified Data.Map as M


lenUniqueElms :: (Eq a) => [a] -> Int
lenUniqueElms xs = (length . nub) xs

-- nub filters unique elements from the list

placeBw :: [a] -> a -> [a]
placeBw xs e = intersperse e xs

-- intersperse puts an element between each element of list

placeBw2D :: [a] -> [[a]] -> [a]
placeBw2D xs xss= intercalate xs xss

-- intercalate does the same but puts a list b/w lists in 2d list and flattens it

polSum :: (Num a) => [[a]] -> [a]
polSum mat = map sum $ transpose mat

-- Function used to sum polynomial equations

-- concat flattens a list of lists into just a list of elements.

squaredElms x = take 20 $ iterate (*x) x
-- iterate takes a function and a starting value. It applies the function to the starting value, 
--then it applies that function to the result, 
--then it applies the function to that result again, etc. It returns all the results in the form of an infinite list.


isAllOdd xs= all (odd) xs

isAnyOdd xs = any (odd) xs

-- any and all check if any element or all element in the list match the condition


-- splitAt takes a number and a list. It then splits the list at that many elements, returning the resulting two lists in a tuple.

weirdSum = sum . takeWhile (<10000) $ map (^3) [1..]

-- takeWhile takes elements from a list while the predicate holds and then when an element is encountered that doesn't satisfy the predicate

-- dropWhile does the same thing only oposite. Once the predicate is false, it starts taking the list elms

-- group takes a list and groups adjacent elements into sublists if they are equal.

subStrFromBeg :: [Char] -> [[Char]]
subStrFromBeg xs = inits xs

subStrFromEnd :: [Char] -> [[Char]]
subStrFromEnd xs = tails xs
-- inits and tails are like init and tail, only they recursively apply that to a list until there's nothing left. Observe.


-- isInfixOf is used to check if the given string is a substr of str

greaterThan x xs = find (>x) xs

-- find takes a predicate and a list and returns Maybe value can either be Just something or Nothing

breakSentence :: String -> [String]
breakSentence xs = words xs
-- words and unwords are for splitting a line of text into words or joining a list of words into a text.



-- delete takes an element and a list and deletes the first occurence of that element in the list.



