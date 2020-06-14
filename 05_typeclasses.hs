-- A typeclass implements some interfeace or behaviour
-- If a type is part of a typeclass, that means it supports and implements the 
-- behaviour that the typeclass describes.

-- The functon show is a member of Show typeclass which converts its arg to str
str x = show x

-- Read is opposite of Show. The read function takes a string and returns
-- a tuype which is a member of Read

-- Enums are sequentially ordered types.. They can be enumerated
-- They are very advantageous with list range

compOper = [LT .. GT]

-- Types are sets of values
-- Typeclasses are sets of types

-- If we check the type of integer 3 using :t 3
-- its shows typeclass Num

x = 3
-- Now if we check type of x, it will show Integer 
-- because we have binded the value to a name and HS commits to a type

-- Can also be done via

a :: Float
a = 2.11

