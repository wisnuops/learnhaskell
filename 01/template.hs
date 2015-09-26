-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Aneh where
import Data.List

-- 1. The null function is for checking whether a list is an empty list or not.
-- input list, output boolean

null' x = (x == [])

-- 2. the take function is for taking the data number n, n+1, and so on in a list.
-- input integer, list; output list

take' 0 (a:as) = []
take' x [] = []
take' x (a:as) = a : (take' (pred x) as)

-- this one is also effective, but takes longer time and larger momory when executed:

take'' x [] = []
take'' x (a:as)
 | x == 0 = []
 | otherwise = a : (take'' (pred x) as)

-- 3. the drop function is for taking the data number n, n-1, and so on in a list.
-- input integer, list; output list
-- I created two ways of defining drop

drop' x [] = []
drop' 0 y = y
drop' x (y:ys) = drop' (pred x) ys

-- this one is also effective, but takes longer time and larger momory when executed:

drop'' x y
 | x < 1 = y
 | y == [] = []
 | otherwise = drop'' (pred x) as
   where (a:as) = y

-- 4. return the first value of a tuple

fst' (a, b) = a

-- 5. return the second value of a tuple

snd' (a, b) = b

-- 6. Map is a function that maps a list itu another list by using a function.
-- input function and a list, output list.

map' f [] = []
map' f [x] = [(f x)]
map' f (x:xs) = (f x):(map' f xs)

m = map' (\ x -> x*x) [2, 3]
m2 = map' (geser3kali) "ini juga bisa"

geser3kali x = (succ (succ (succ x)))
-- 7. The filter function is to filter whether the domain that only applies on certain condition.

filter' f [] = []
filter' f (x:xs)
 | (f x) = x:(filter' f xs)
 | otherwise = (filter' f xs)

o = filter' (\ x -> x>0) [4, 3, (-2), (-1), 0, 1, 2] -- returns [1, 2] because 1 and 2 is greater than 0.

-- 8. delete a datum from a list
-- input the datum, output list

delete' a [] = []
delete' a (x:xs)
 | (a == x) = (delete' a xs)
 | otherwise = x:(delete' a xs)

p = delete' 2 [2, 3, 5, 2, 1, 1]
q = delete' 1 [2, 3, 4, 2, 1, 3]

-- 9. create deleteAll

deleteAll a = []

-- 10. pembatas

foldl' x = x

-- 11. pembatas

foldl1' x = x

-- 12. zip
-- this one is faster but consumes larger memory

zip'' x y
 | x == [] || y == [] = []
 | otherwise = (a,b):(zip' as bs)
 where (a:as) = x
       (b:bs) = y

-- this one is slower but consumes little memory
zip' a [] = []
zip' [] b = []
zip' (a:as) (b:bs) = (a,b):(zip'' as bs)

r = zip' [2, 3, 4] [6, 7, 8] -- returns [(2,6),(3,7),(4,8)]

-- 13. pembatas

zipWith' f a [] = []
zipWith' f [] b = []
zipWith' f (a:as) (b:bs) = (f a b):(zipWith' f as bs)

s = zipWith' (\ x y -> 2*x+y) [1,2] [4, 5] -- returns [6, 9] because 2*1+4=6 and 2*2+5= 9

-- 14. pembatas

nth' (a:as) 0 = a
nth' (a:as) n = nth' as (pred n)

-- 15. pembatas

scanl' x = x

-- 16. pembatas

scanl1' x = x

-- 17. pembatas

elem' a [] = False
elem' a (y:ys)
 | a == y = True
 | ys == [] = False
 | otherwise = elem' a ys

t = elem' 2 [1, 2, 3, 4] -- returns True
u = elem' 2 [1, 3, 4] -- returns False

-- 18. pembatas

notElem' a [] = True
notElem' a (y:ys)
 | a == y = False
 | ys == [] = True
 | otherwise = notElem' a ys

v = notElem' 2 [1, 2, 3, 4] -- returns False
w = notElem' 2 [1, 3, 4] -- returns True

-- 19. pembatas

head' (a:as) = a

x = head' [2, 3, 4, 5] -- returns 2

-- 20. pembatas

length' [] = 0
length' (a:as) = 1 + (length' as)

length'' x
 | x == [] = 0
 | otherwise = 1 + (length' as)
 where (a:as) = x

y = length' [3, 4, 5, 6] -- returns 4

-- 21. pembatas

reverse' []  = []
reverse' (a:as) = (reverse' as) ++ [a]

z = reverse' [1, 2, 3, 4] -- returns [4, 3, 2, 1]

-- 22. pembatas

last' (a:as)
 | as == [] = a
 | otherwise = (last' as)

aa = last' [3, 4, 5, 6] -- returns 6
ab = last [3, 4, 5, 6] -- returns 6

-- 23. pembatas

tail' (a:as) = as

bb = tail' [3, 4, 5, 6] -- returns [4, 5, 6]

-- 24. pembatas

init' (x:xs)
 | xs == [] = []
 | otherwise = x:(init' xs)

cc = init' [3, 4, 5, 6] -- returns [3, 4, 5]

-- 25. pembatas

max' a b
 | a >= b = a
 | a < b = b

dd = max' 8 4 -- returns 8

-- 26. pembatas

min' a b
 | a >= b = b
 | a < b = a

ee = min' 8 4 -- returns 4

-- 27. pembatas

concat' [] = []
concat' [x] = x
concat' (b:bs) = b ++ (concat' bs)

ff = concat' ["wisnu", "zhuge", "sima"] -- returns "wisnuzhugesima"
gg = concat' [[1, 2], [5, 6]] -- returns [1,2,5,6]

-- 28. pembatas

intersperse' a [] = []
intersperse' a (y:ys)
 | ys == [] = [y]
 | otherwise = y:a:(intersperse' a ys)

hh = intersperse' 'a' "qrtgd" -- returns "qaratagad"
ii = intersperse' 2 [1, 3, 4, 6, 7] -- returns [1,2,3,2,4,2,6,2,7]

-- 29. pembatas

intercalate' x [] = []
intercalate' x (b:bs)
 | bs == [] = b
 | otherwise = b ++ x ++ (intercalate x bs)

jj = intercalate' "wisnu" ["zhuge", "sima", "ina"] -- returns "zhugewisnusimawisnuina"
jk = intercalate' "asakl" []

-- 30. b ++ x ++ (intercalate' x bs)
--pembatas

and' [] = True
and' (a:as) = a && (and' as)

kk = and' [True, False, True] -- returns False

-- 31. pembatas

or' [] = False
or' (a:as) = a || (or' as)

ll = or' [True, False, True] -- returns True

-- 32. pembatas

zip3' a b c
 | a == [] || b == [] || c == [] = []
 | otherwise = (x, y, z):(zip3' xs ys zs)
 where (x:xs) = a
       (y:ys) = b
       (z:zs) = c

mm = zip3' "abcd" [2, 4, 3, 1] "ijkl" -- returns [('a',2,'i'),('b',4,'j'),('c',3,'k'),('d',1,'l')]

-- 33. pembatas

sum' [] = 0
sum' (a:as) = a + (sum' as)

nn = sum' [1, 2, 4] -- returns 7

-- 34. pembatas

product' [] = 1
product' (a:as) = a *  (product' as)

oo = product' [1, 2, 4] -- returns 8

-- 35. pembatas

unlines' [] = []
unlines' [x] = x
unlines' (b:bs) = b ++ "\n" ++ (unlines' bs)

rr = unlines' ["wisnu","ina","zhuge","sima"] -- returns "wisnu\nina\nzhuge\nsima\n"

-- 36. pembatas

unwords' [] = []
unwords' [x] = x
unwords' (b:bs) = b ++ " " ++ (unwords' bs)

ss = unwords' ["wisnu","oktobrie","putra","subekti"] -- returns "wisnu oktobrie putra subekti"

-- 37. pembatas

takeWhile' x = x

-- 38. pembatas

dropWhile' x = x

-- 39. pembatas

concatMap' f x
 | x == [] = []
 | otherwise = (f a) ++ (concatMap' f as)
 where (a:as) = x

vv = concatMap' (\ x -> [4*x, 5*x, 7*x]) [2, 3, 0, 1] -- returns [8,10,14,12,15,21,0,0,0,4,5,7]

-- 40. Keep in mind that the "all" predicate for an empty set is True.
-- https://en.wikipedia.org/wiki/Vacuous_truth

all' f x
 | x == [] = True
 | otherwise = (f a) && (all' f as)
 where (a:as) = x

ww = all' (\ x -> x==1) [1, 2, 3, 4] -- returns False
xx = all' (\ x -> x==1) [1, 1, 1, 1] -- returns True
xr = all' (\ x -> x==1) [] -- returns False

-- 41. pembatas

any' f x
 | x == [] = False
 | otherwise = (f a) || (all' f as)
 where (a:as) = x

yy = any' (\ x -> x==1) [1, 2, 3, 4] -- returns True
zz = any' (\ x -> x==1) [2, 3, 4] -- returns False
yz = any' (\ x -> x==1) [] -- returns False

-- 42. pembatas

insert' a as = a:as

aq = insert' 'a' "lsdkjasf" -- returns "alsdkjasf"

-- 43. pembatas

zipWith3' f x y z
 | x == [] || y == [] || z == [] = []
 | otherwise = (f a b c):(zipWith3' f as bs cs)
 where (a:as) = x
       (b:bs) = y
       (c:cs) = z

bbb = zipWith3 (\ x y z -> x+y+z) [9, 8, 7] [6, 5, 4] [3, 2, 1] -- returns [18,15,12]
bab = zipWith3' (\ x y z -> x+y+z) [9, 8, 7] [6, 5, 4] [3, 2, 1] -- returns [18,15,12]

-- 1.b

ccc = nub' "sdskdjls" -- reutrns "sdkjl"
csc = nub "sdskdjls" -- reutrns "sdkjl"

nub' [] = []
nub' (x:xs)
  | xs == [] = [x]
  | (elem' x xs) = x:(nub' (delete' x xs))
  | otherwise = x:(nub' xs)

--pembatas

ddd = sort' "asokwjfweg" -- returns "aefgjkosww"
dds = sort "asokwjfweg" -- returns "aefgjkosww"

sort' [] = []
sort' y
 | (a == minimum' y) = a:(sort' as)
 | otherwise = (sort' (as ++ [a]))
 where (a:as) = y

--pembatas

eee = minimum' "oikjwkefwef" -- returns 'e'

minimum' (x:xs)
 | xs == [] = x
 | (x < y) = minimum' (x:ys)
 | otherwise = minimum' (y:ys)
 where (y:ys) = xs

--pembatas

fff = maximum' "oikjwkefwef" -- returns 'w'

maximum' (x:xs)
 | xs == [] = x
 | (x > y) = maximum' (x:ys)
 | otherwise = maximum' (y:ys)
 where (y:ys) = xs

--pembatas

ggg = inits' "wlkfjqiomg" -- returns ["","w","wl","wlk","wlkf","wlkfj","wlkfjq","wlkfjqi","wlkfjqio","wlkfjqiom","wlkfjqiomg"]

inits' [] = [[]]
inits' x = inits' (init x) ++ [x]

--pembatas

hhh = tails' "wlkfjqiomg" -- reutns ["wlkfjqiomg","lkfjqiomg","kfjqiomg","fjqiomg","jqiomg","qiomg","iomg","omg","mg","g",""]

tails' [] = [[]]
tails' x = x:(tails' (tail x))

--pembatas

iii = union' "wisnu" "oktobrie" -- returns "wisnuoktbre"

union' a b = (nub' (a ++ b))

--pembatas

jjj = intersect' "slkdjs" "qokfc" -- returns "k"
kkk = intersect' "qlqkncnqtnslewt" "snqw veefkje" -- returns "qqknnqnsew"

intersect' [] b = []
intersect' (a:as) b
  | (elem' a b) = a:(intersect' as b)
  | otherwise = (intersect' as b)

--pembatas

lll = group' "slkjsvsmvks" -- returns ["s","l","k","j","s","v","s","m","v","k","s"]
mmm = group' [3, 4, 6,67,7] -- returns [[3],[4],[6],[67],[7]]

group' [] = []
group' (a:as)
 | as == [] = [[a]]
 | otherwise = [a]:(group' as)

--pembatas

nnn = splitAt' 3 "winkjsdfwf" -- returns ("win","kjsdfwf")

splitAt' i b = (take' i b, drop' i b)

-- pembatas / Gue agak penasaran sih. Code kayak gini sebenernya ineficient nggak sih?
-- masalahnya gue harus bikin dua fungsi untuk melakukan hal serupa:
-- Filter dan invFilter. Keduanya mirip.
-- Bisa nggak sih sekali jalan untuk melakukan Keduanya bersamaan?

ooo = partition' (\x -> x>7) [2,3,3,3,4,5,56,56] -- returns ([56,56],[2,3,3,3,4,5])
ppp = partition' (\x -> x<7) [2,3,3,3,4,5,56,56] -- returns ([2,3,3,3,4,5],[56,56])

partition' f x = [(filter' f x), (invFilter' f x)]

invFilter' f [] = []
invFilter' f (x:xs)
   | (f x) = (invFilter' f xs)
   | otherwise = x:(invFilter' f xs)

--pembatas

qqq = replicate' 2 4 -- returns [4,4]
rrr = replicate' 10 'f' -- returns "ffffffffff"

replicate' a b
 | a < 1 = []
 | otherwise = b:(replicate (pred a) b)

--pembatas

pp = words' " wisnu oktobrie putra    subekti" -- returns ["wisnu","oktobrie","putra","subekti"]

aword [] = []
aword (w:ws)
  | w == ' ' = aword ws
  | otherwise = (takeWhile (\x -> x > ' ') (w:ws))

sisaword [] = []
sisaword (w:ws)
  | w == ' ' = sisaword ws
  | otherwise = (dropWhile (\x -> x > ' ') (w:ws))

words' [] = []
words' x
 | sisaword x == [] = [aword x]
 | otherwise = (aword x):(words' (sisaword x))

--pembatas

qq = lines' "\nwisnu\nina\n\nzhuge\nsima" -- returns ["wisnu","ina","zhuge","sima"]

aline [] = []
aline (w:ws)
  | w == '\n' = aline ws
  | otherwise = (takeWhile (\x -> x > '\n') (w:ws))

sisaline [] = []
sisaline (w:ws)
  | w == '\n' = sisaline ws
  | otherwise = (dropWhile (\x -> x > '\n') (w:ws))

lines' [] = []
lines' x
 | sisaline x == [] = [aline x]
 | otherwise = (aline x):(lines' (sisaline x))

-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE

-- foldl ini bener-bener time wasting banget... ga ketemu2 coba.

fung = (\ x y -> x)
fungsi = (\ x y -> x)
listnya = "qs"
tes [] = []
tes (d:ds) = (foldl fungsi d listnya):(tes ds)

wer = tes [(-3), (-2), (-1), 0, 1, 2, 3]

indexOf a [] = -1
indexOf a (d:ds)
 | (notElem' a (d:ds)) = -1
 | d /= a = 1 + (indexOf a ds)
 | otherwise = 0

swap' a b h = (take mi h) ++ [(nth' h ma)] ++ (take (ma-mi-1) (drop (mi+1) h)) ++ [(nth' h mi)] ++ (drop (ma+1) h)
 where ma = max' a b
       mi = min' a b
