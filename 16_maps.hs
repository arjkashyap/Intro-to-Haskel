import Data.List
import qualified Data.Map as M

-- Map Module
-- Most obio way to create a map is to create associative key 
phoneBook =   
    [("betty","555-2938")  
    ,("bonnie","452-2928")  
    ,("patsy","493-2928")  
    ,("lucille","205-2928")  
    ,("wendy","939-8282")  
    ,("penny","853-2492")  
    ] 


-- The first component in the pair would be the key, the second component the value

-- Lets create a function to search key value pair. The following function takes the key 
-- and returns the pair associated with it

findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head .filter (\(k, v) -> key == key) $ xs

-- Here we explicitly created our own map and find func

-- However to create a map using the Data.Map module
-- The fromList function takes an association list (in the form of a list) 
--and returns a map with the same associations.

createmap xs = M.fromList(xs)


-- empty represents an empty map. It takes no arguments, it just returns an empty map.

-- Inserting new elements in th map

mapInsert k v mp = M.insert k v mp

-- null checks if a map is empty.


-- size reports the size of a map.