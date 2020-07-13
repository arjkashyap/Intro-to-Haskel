-- Like many other imperative programming languages, which use
-- Switch/case statements to execute a block of code if a variable 
-- Matches a certain value
-- Haskel, much like everything else takes this concept a bit further
-- Not only vars, case syntax in haskel can also be used for pattern matching
-- Infact pattern matching is just a syntactic sugar for cases:

head' :: [a] -> a
head' xs = case xs of [] -> error "List is empty, Dummy.."
                      (x:_) -> x

-- Pattern matching in haskel can be pretty much done anywhere
describeLst :: [a] -> String
describeLst lst = "The list is " ++ case lst of [] -> "a singleton"
                                                [x] -> "having a single element"
                                                (x:_) -> "a long list"
-- Notice how we match pattern in middle of the expression itself
-- The above could also be done as 
describeList :: [a] -> String  
describeList xs = "The list is " ++ what xs  
    where what [] = "empty."  
          what [x] = "a singleton list."  
          what xs = "a longer list."  