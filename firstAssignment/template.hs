-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Template where

import Data.List

-- The null function is for checking whether a list is an empty list or not.
-- input list, output boolean

iskosong x = if null x then "list kosong" else "list tidak kosong"
a = iskosong [1, 2, 3]
b = iskosong []

-- the take function is for taking the data number n, n+1, and so on in a list.
-- input integer, list; output list

c = take 3 [3, 4, 5, 6] -- the value of c is [3, 4, 5] because 6 is data no 3 (numbering start from zero)
d = take 1 [3, 4, 5, 6] -- the value of d is [3] because 4, 5, 6, is data no 1, 2, 3

-- the drop function is for taking the data number n, n-1, and so on in a list.
-- input integer, list; output list

e = drop 0 [2, 3, 4] -- e = [2,3,4]
f = drop 1 [2, 3, 4] -- f = [3,4]
h = drop 3 [2, 3, 4] -- h = []

-- return the first value of a #IdontKnowTheName

i = fst (1, 2) -- return 1
j = fst ('f', 'g') -- return 'f'
k = fst ("wisnu", "ops") -- return "wisnu"

-- return the second value of a #IdontKnowTheName

l = snd (1, 2) -- return 2

-- I am still not sure whether lambda function is the only available input for the map function.
-- If it's true, then map is a function that map a list itu another list by using a function.
-- input function and a list, output list.

m = map (\ x -> x*x) [2, 3]

-- The filter function is to filter whether the domain that only applies on certain condition.

o = filter (\ x -> x>0) [(-2), (-1), 0, 1, 2] -- returns [1, 2] because 1 and 2 is greater than 0.

-- delete a datum from a list
-- input the datum, output list

p = delete 2 [1, 2, 3] -- returns [1, 3] because '2' is deleted
q = delete 1 [1, 2, 3] -- returns [2, 3] because '1' is deleted

-- create deleteAll by using take function

deleteAll a = take 0 a -- returns an empty list [].

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' x = x

--pembatas

zipWith' x = x

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem' x = x

--pembatas

notElem' x = x

--pembatas

head' x = x

--pembatas

length' x = x

--pembatas

reverse' x = x

--pembatas

last' x = x

--pembatas

tail' x = x

--pembatas

init' x = x

--pembatas

max' x = x

--pembatas

min' x = x

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' x = x

--pembatas

product' x = x

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
