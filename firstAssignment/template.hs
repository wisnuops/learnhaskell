 -- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Template where

import Data.List

-- The null function is for checking whether a list is an empty list or not.
-- input list, output boolean

null' x = (x == [])

-- the take function is for taking the data number n, n+1, and so on in a list.
-- input integer, list; output list

take' 0 (a:as) = []
take' x [] = []
take' x (a:as) = a : (take' (pred x) as)

-- I don't understand why there is an error in this definition:
take'' x (a:as)
  | x == 0 = []
  | (a:as) == [] = [] -- <- it looks like this line doesn't work
  | otherwise = a : (take'' (pred x) as)

-- the drop function is for taking the data number n, n-1, and so on in a list.
-- input integer, list; output list
-- I created two ways of defining drop

drop' x [] = []
drop' 0 y = y
drop' x (y:ys) = drop' (pred x) ys

drop'' x y
  | x < 1 = y
  | y == [] = []
  | otherwise = drop'' (pred x) as
    where (a:as) = y

-- return the first value of a tuple

fst' (a, b) = a

-- return the second value of a tuple

snd' (a, b) = b

-- I am still not sure whether lambda function is the only available input for the map function.
-- If it's true, then map is a function that map a list itu another list by using a function.
-- input function and a list, output list.

map' f [] = []
map' f [x] = [(f x)]
map' f (a:as) = (f a):(map' f as)

a = (map' (\x -> x*x) [3, 1, 2, 5, (-2)])
b = (map' (\x -> x*x) [3])

-- The filter function is to filter whether the domain that only applies on certain condition.

filter' f dom
  | dom == [] = []
  | (f d) = d:(filter' f ds)
  | otherwise = (filter' f ds)
  where (d:ds) = dom

c = filter' (\ x -> x>0) [4, (-2), (-1), 0, 1, 2] -- returns [1, 2] because 1 and 2 is greater than 0.

-- delete a datum from a list
-- input the datum, output list

delete' a x
  | x == [] = []
  | a == b = (delete' a bs)
  | otherwise = b:(delete' a bs)
  where (b:bs) = x

d = delete' 2 [4, 3, 1, 2, 3] -- returns [4, 3, 1, 3] because '2' is deleted

-- delete' x (y:ys) = delete' x ys

-- create deleteAll

deleteAll a = []

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

r = zip [2, 3, 4] [6, 7, 8] -- returns [(2,6),(3,7),(4,8)]
zip' x y
  | x == [] && y == [] = []
  | otherwise = (a,b):(zip' as bs)
  where (a:as) = x
        (b:bs) = y

zip'' [] [] = []
zip'' (a:as) (b:bs) = (a,b):(zip'' as bs)

--zipWith nih:

zipWith' f [] [] = []
zipWith' f [x] [y] = [(f x y)]
zipWith' f (x:xs) (y:ys) = (f x y):(zipWith' f xs ys)

s = zipWith' (\ x y -> 2*x+y) [1,2] [4, 5] -- returns [6, 9] because 2*1+4=6 and 2*2+5= 9

--pembatas

nth' (a:as) 0 = a
nth' (a:as) n = nth' as (pred n)

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

t = elem 2 [1, 2, 3, 4] -- returns True
u = elem 2 [1, 3, 4] -- returns False

elem' a (y:ys)
  | a == y = True
  | ys == [] = False
  | otherwise = elem' a ys

--pembatas

v = notElem 2 [1, 2, 3, 4] -- returns False
w = notElem 2 [1, 3, 4] -- returns True

notElem' a (y:ys)
  | a == y = False
  | ys == [] = True
  | otherwise = notElem' a ys

--pembatas

x = head [2, 3, 4, 5] -- returns 2

head' (a:as) = a

--pembatas

y = length [3, 4, 5, 6] -- returns 4

length' [] = 0
length' (a:as) = 1 + (length' as)

length'' x
  | x == [] = 0
  | otherwise = 1 + (length' as)
  where (a:as) = x

--pembatas

z = reverse [1, 2, 3, 4] -- returns [4, 3, 2, 1]

--reverse' x
--  | =

--pembatas

aa = last [3, 4, 5, 6] -- returns 6

--pembatas

bb = tail [3, 4, 5, 6] -- returns [4, 5, 6]

tail' (a:as) = as

--pembatas

cc = init [3, 4, 5, 6] -- returns [3, 4, 5]

init' (x:xs)
  | xs == [] = []
  | otherwise = x:(init' xs)

--pembatas

dd = max 8 4 -- returns 8

max' a b
  | a >= b = a
  | a < b = b

--pembatas

ee = min 8 4 -- returns 4

min' a b
  | a >= b = b
  | a < b = a

--pembatas

ff = concat ["wisnu", "zhuge", "sima"] -- returns "wisnuzhugesima"
gg = concat [[1, 2], [5, 6]] -- returns [1,2,5,6]

concat' [] = []
concat' [x] = x
concat' (b:bs) = b ++ (concat' bs)

--pembatas

hh = intersperse 'a' "qrtgd" -- returns "qaratagad"
ii = intersperse 2 [1, 3, 4, 6, 7] -- returns [1,2,3,2,4,2,6,2,7]

--pembatas

jj = intercalate "wisnu" ["zhuge", "sima", "ina"] -- returns "zhugewisnusimawisnuina"

--pembatas

kk = and [True, False, True] -- returns False

and' [] = True
and' (a:as) = a && (and' as)
--pembatas

ll = or [True, False, True] -- returns True

or' [] = False
or' (a:as) = a || (or' as)

--pembatas

mm = zip3 "abcd" "efgh" "ijkl" -- returns [('a','e','i'),('b','f','j'),('c','g','k'),('d','h','l')]

--pembatas

nn = sum [1, 2, 4] -- returns 7

sum' [] = 0
sum' (a:as) = a + (sum' as)

--pembatas

oo = product [1, 2, 4] -- returns 8

product' [] = 1
product' (a:as) = a *  (product' as)

--pembatas

pp = words "wisnu oktobrie putra subekti" -- returns ["wisnu","oktobrie","putra","subekti"]

--pembatas

qq = lines "wisnu\nina\nzhuge\nsima" -- returns ["wisnu","ina","zhuge","sima"]

--pembatas

rr = unlines ["wisnu","ina","zhuge","sima"] -- returns "wisnu\nina\nzhuge\nsima\n"

--pembatas

ss = unwords ["wisnu","oktobrie","putra","subekti"] -- returns "wisnu oktobrie putra subekti"

unwords' [] = []
unwords' [x] = x
unwords' (b:bs) = b ++ " " ++ (unwords' bs)

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

vv = concatMap (\ x -> [2*x, 3*x]) [2, 3] -- returns [4,6,6,9]

--pembatas

ww = all (\ x -> x==1) [1, 2, 3, 4] -- returns False
xx = all (\ x -> x==1) [1, 1, 1, 1] -- returns True

--pembatas

yy = any (\ x -> x==1) [1, 2, 3, 4] -- returns True
zz = any (\ x -> x==1) [2, 3, 4] -- returns False

--pembatas

aaa = insert 'a' "lsdkjasf" -- returns "alsdkjasf"

--pembatas

bbb = zipWith3 (\ x y z -> x+y+z) [9, 8, 7] [6, 5, 4] [3, 2, 1] -- returns [18,15,12]

--pembatas

-- 1.b

ccc = nub "sdskjls" -- reutrns "sdkjl"

--pembatas

ddd = sort "sokwjfweg" -- returns "efgjkosww"

--pembatas

eee = minimum "oikjwkefwef" -- returns 'e'

--pembatas

fff = maximum "oikjwkefwef" -- returns 'w'

--pembatas

ggg = inits "wlkfjqiomg" -- returns ["","w","wl","wlk","wlkf","wlkfj","wlkfjq","wlkfjqi","wlkfjqio","wlkfjqiom","wlkfjqiomg"]

--pembatas

hhh = tails "wlkfjqiomg" -- reutns ["wlkfjqiomg","lkfjqiomg","kfjqiomg","fjqiomg","jqiomg","qiomg","iomg","omg","mg","g",""]

--pembatas

iii = union "wisnu " "oktobrie" -- returns "wisnu oktbre"

--pembatas

jjj = intersect "slkdjs" "qokfc" -- returns "k"
kkk = intersect "qlqkncnqtnslewt" "snqw veefkje" -- returns "qqknnqnsew"

--pembatas

lll = group "slkjsvsmvks" -- returns ["s","l","k","j","s","v","s","m","v","k","s"]
mmm = group [3, 4, 6,67,7] -- returns [[3],[4],[6],[67],[7]]

--pembatas

nnn = splitAt 3 "winkjsdfwf" -- returns ("win","kjsdfwf")

--pembatas

ooo = partition (\x -> x>7) [2,3,3,3,4,5,56,56] -- returns ([56,56],[2,3,3,3,4,5])
ppp = partition (\x -> x<7) [2,3,3,3,4,5,56,56] -- returns ([2,3,3,3,4,5],[56,56])

--pembatas

qqq = replicate 2 4 -- returns [4,4]
rrr = replicate 10 'f' -- returns "ffffffffff"

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
