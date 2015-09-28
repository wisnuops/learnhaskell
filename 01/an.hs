-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module An where
import Data.List

-- 1. The null function is for checking whether a list is an empty list or not.
-- input list, output boolean

null' x = (x == [])

-- 2. the take function is for taking the data number n, n+1, and so on in a list.
-- input integer, list; output list

-- this one doesn't work if x == -1 such as take (-1) "sdkjsl"
-- take' 0 (a:as) = []
-- take' x [] = []
-- take' x (a:as) = a : (take' (x-1) as)

take' x [] = []
take' x (a:as)
 | x <= 0 = []
 | otherwise = a : (take' (x-1) as)

-- 3. the drop function is for taking the data number n, n-1, and so on in a list.
-- input integer, list; output list
-- I created two ways of defining drop

-- this one doesn't work for x == -1 such as in drop (-1) "ldksj"
-- drop' x [] = []
-- drop' 0 y = y
-- drop' x (y:ys) = drop' (pred x) ys

drop' x y
 | x <= 0 = y
 | y == [] = []
 | otherwise = drop' (x-1) as
   where (a:as) = y

-- 4. return the first value of a tuple

fst' (a, b) = a

-- 5. return the second value of a tuple

snd' (a, b) = b

-- 6. Map is a function that maps a list into another list by using a function.
-- input function and a list, output list.

map' f [] = []
map' f [x] = [(f x)]
map' f (x:xs) = (f x):(map' f xs)

no6 = map' (\ x -> x*x) [2, 3]
no6b = map' (geser3kali) "ini juga bisa"
geser3kali x = (succ (succ (succ x)))

-- 7. The filter function is to filter whether the domain that only applies on certain condition.

filter' f [] = []
filter' f (x:xs)
 | (f x) = x:(filter' f xs)
 | otherwise = (filter' f xs)

no7 = filter' (\ x -> x>0) [4, 3, (-2), (-1), 0, 1, 2] -- returns [4, 3, 1, 2]

-- 8. delete a datum from a list
-- input the datum, output list

delete' a [] = []
delete' a (x:xs)
 | (a == x) = xs
 | otherwise = x:(delete' a xs)

no8 = delete' 2 [2, 3, 5, 2, 1, 1]
no8b = delete' 1 [2, 3, 4, 2, 1, 3]

-- 9. create deleteAll

deleteAll' a [] = []
deleteAll' a (x:xs)
 | (a == x) = (deleteAll' a xs)
 | otherwise = x:(deleteAll' a xs)

no9 = deleteAll' 2 [2, 3, 5, 2, 1, 1]
no9b = deleteAll' 1 [2, 3, 4, 2, 1, 3]

-- 10. pembatas

foldl'' f x [] = x
foldl'' f x (b:bs) = foldl'' f (f x b) bs

-- 11. pembatas

foldl1'' f (a:as)
  | as == [] = a
  | xs == [] = (f a x)
  | otherwise = (f (foldl1'' f as) x)
  where (x:xs) = as

-- 12. zip / creating two versions of zip.
-- The first one is faster but consumes larger memory (for several input that are tested)

zip'' x y
 | x == [] || y == [] = []
 | otherwise = (a,b):(zip' as bs)
 where (a:as) = x
       (b:bs) = y

-- The second one is slower but consumes little memory (for several input that are tested)

zip' a [] = []
zip' [] b = []
zip' (a:as) (b:bs) = (a,b):(zip'' as bs)

no12 = zip' [2, 3, 4] [6, 7, 8] -- returns [(2,6),(3,7),(4,8)]

-- 13. pembatas

zipWith' f a [] = []
zipWith' f [] b = []
zipWith' f (a:as) (b:bs) = (f a b):(zipWith' f as bs)

s = zipWith' (\ x y -> 2*x+y) [1,2] [4, 5] -- returns [6, 9] because 2*1+4=6 and 2*2+5= 9

-- 14. Ini works, tapi type-nya kenapa nggak Int yah? Beda sama aslinya.

nth' (a:as) 0 = a
nth' (a:as) n = nth' as (n-1)

-- 15. Mirip kayak fold, cuma setiap prosesnya dihitung dan dikeluarin semua dalam bentuk list.

scanl' f x [] = [x]
scanl' f x (b:bs) = x:(scanl' f (f x b) bs)

-- 16. pembatas

scanl1' f [] = []
scanl1' f (a:as)
  | as == [] = [a]
  | xs == [] = a:[(f a x)]
  | otherwise = a:(scanl1' f ((f a x):xs))
  where (x:xs) = as

-- 17. pembatas

elem' a [] = False
elem' a (y:ys)
 | a == y = True
 | ys == [] = False
 | otherwise = elem' a ys

-- 18. pembatas

notElem' a [] = True
notElem' a (y:ys)
 | a == y = False
 | ys == [] = True
 | otherwise = notElem' a ys

-- 19. pembatas

head' (a:as) = a

-- 20. Ini juga works tapi type-nya beda sama aslinya

length' [] = 0
length' (a:as) = 1 + (length' as)

length'' x
 | x == [] = 0
 | otherwise = 1 + (length' as)
 where (a:as) = x

-- 21. pembatas

reverse' []  = []
reverse' (a:as) = (reverse' as) ++ [a]

-- 22. pembatas

last' (a:as)
 | as == [] = a
 | otherwise = (last' as)

no22 = last' [3, 4, 5, 6] -- returns 6

-- 23. pembatas

tail' (a:as) = as

-- 24. pembatas

init' (x:xs)
 | xs == [] = []
 | otherwise = x:(init' xs)

no24 = init' [3, 4, 5, 6] -- returns [3, 4, 5]

-- 25. pembatas

max' a b
 | a >= b = a
 | a < b = b

-- 26. pembatas

min' a b
 | a >= b = b
 | a < b = a

-- 27. pembatas

concat' [] = []
concat' [x] = x
concat' (b:bs) = b ++ (concat' bs)

no27 = concat' ["wisnu", "zhuge", "sima"] -- returns "wisnuzhugesima"
no27b = concat' [[1, 2], [5, 6]] -- returns [1,2,5,6]

-- 28. pembatas

intersperse' a [] = []
intersperse' a (y:ys)
 | ys == [] = [y]
 | otherwise = y:a:(intersperse' a ys)

no28 = intersperse' 'a' "qrtgd" -- returns "qaratagad"
no28b = intersperse' 2 [1, 3, 4, 6, 7] -- returns [1,2,3,2,4,2,6,2,7]

-- 29. pembatas

intercalate' x [] = []
intercalate' x (b:bs)
 | bs == [] = b
 | otherwise = b ++ x ++ (intercalate x bs)

no29 = intercalate' "wisnu" ["zhuge", "sima", "ina"] -- returns "zhugewisnusimawisnuina"
no29b = intercalate' "asakl" []

-- 30. b ++ x ++ (intercalate' x bs)
--pembatas

and' [] = True
and' (a:as) = a && (and' as)

-- 31. pembatas

or' [] = False
or' (a:as) = a || (or' as)

-- 32. pembatas

zip3' a b c
 | a == [] || b == [] || c == [] = []
 | otherwise = (x, y, z):(zip3' xs ys zs)
 where (x:xs) = a
       (y:ys) = b
       (z:zs) = c

no32 = zip3' "abcd" [2, 4, 3, 1] "ijkl" -- returns [('a',2,'i'),('b',4,'j'),('c',3,'k'),('d',1,'l')]

-- 33. pembatas

sum' [] = 0
sum' (a:as) = a + (sum' as)

-- 34. pembatas

product' [] = 1
product' (a:as) = a *  (product' as)

-- 35. pembatas

unlines' [] = []
unlines' [x] = x
unlines' (b:bs) = b ++ "\n" ++ (unlines' bs)

no35 = unlines' ["wisnu","ina","zhuge","sima"] -- returns "wisnu\nina\nzhuge\nsima\n"

-- 36. pembatas

unwords' [] = []
unwords' [x] = x
unwords' (b:bs) = b ++ " " ++ (unwords' bs)

no36 = unwords' ["wisnu","oktobrie","putra","subekti"] -- returns "wisnu oktobrie putra subekti"

-- 37. pembatas

takeWhile' f [] = []
takeWhile' f (x:xs)
  | (f x) = x:(takeWhile' f xs)
  | otherwise = []

-- 38. pembatas

dropWhile' f [] = []
dropWhile' f (x:xs)
  | (f x) = (dropWhile' f xs)
  | otherwise = (x:xs)

-- 39. pembatas

concatMap' f x
 | x == [] = []
 | otherwise = (f a) ++ (concatMap' f as)
 where (a:as) = x

no39 = concatMap' (\ x -> [4*x, 5*x, 7*x]) [2, 3, 0, 1] -- returns [8,10,14,12,15,21,0,0,0,4,5,7]

-- 40. Keep in mind that the "all" predicate for an empty set is True.
-- https://en.wikipedia.org/wiki/Vacuous_truth

all' f x
 | x == [] = True
 | otherwise = (f a) && (all' f as)
 where (a:as) = x

no40a = all' (\ x -> x==1) [1, 2, 3, 4] -- returns False
no40b = all' (\ x -> x==1) [1, 1, 1, 1] -- returns True
no40c = all' (\ x -> x==1) [] -- returns False

-- 41. pembatas

any' f x
 | x == [] = False
 | otherwise = (f a) || (all' f as)
 where (a:as) = x

no41 = any' (\ x -> x==1) [1, 2, 3, 4] -- returns True
no41b = any' (\ x -> x==1) [2, 3, 4] -- returns False
no41c = any' (\ x -> x==1) [] -- returns False

-- 42. pembatas

insert' a as = a:as

no42 = insert' 'a' "lsdkjasf" -- returns "alsdkjasf"

-- 43. pembatas

zipWith3' f x y z
 | x == [] || y == [] || z == [] = []
 | otherwise = (f a b c):(zipWith3' f as bs cs)
 where (a:as) = x
       (b:bs) = y
       (c:cs) = z

no43 = zipWith3 (\ x y z -> x+y+z) [9, 8, 7] [6, 5, 4] [3, 2, 1] -- returns [18,15,12]

-- 1.b

b1 = nub' "sdskdjls" -- reutrns "sdkjl"

nub' [] = []
nub' (x:xs)
  | xs == [] = [x]
  | (elem' x xs) = x:(nub' (deleteAll' x xs))
  | otherwise = x:(nub' xs)

--pembatas

b2 = sort' "asokwjfweg" -- returns "aefgjkosww"

sort' [] = []
sort' y
 | (a == minimum' y) = a:(sort' as)
 | otherwise = (sort' (as ++ [a]))
 where (a:as) = y

--pembatas

b3 = minimum' "oikjwkefwef" -- returns 'e'

minimum' (x:xs)
 | xs == [] = x
 | (x < y) = minimum' (x:ys)
 | otherwise = minimum' (y:ys)
 where (y:ys) = xs

--pembatas

b4 = maximum' "oikjwkefwef" -- returns 'w'

maximum' (x:xs)
 | xs == [] = x
 | (x > y) = maximum' (x:ys)
 | otherwise = maximum' (y:ys)
 where (y:ys) = xs

--pembatas

b5 = inits' "wlkfjqiomg" -- returns ["","w","wl","wlk","wlkf","wlkfj","wlkfjq","wlkfjqi","wlkfjqio","wlkfjqiom","wlkfjqiomg"]

inits' [] = [[]]
inits' x = inits' (init x) ++ [x]

--pembatas

b6 = tails' "wlkfjqiomg" -- reutns ["wlkfjqiomg","lkfjqiomg","kfjqiomg","fjqiomg","jqiomg","qiomg","iomg","omg","mg","g",""]

tails' [] = [[]]
tails' x = x:(tails' (tail x))

--pembatas

b7 = union' "wisnu" "oktobrie" -- returns "wisnuoktbre"

union' a b = (nub' (a ++ b))

--pembatas

b8 = intersect' "slkdjs" "qokfc" -- returns "k"
b8b = intersect' "qlqkncnqtnslewt" "snqw veefkje" -- returns "qqknnqnsew"

intersect' [] b = []
intersect' (a:as) b
  | (elem' a b) = a:(intersect' as b)
  | otherwise = (intersect' as b)

--pembatas

b9 = group' "slkjsvsmvks" -- returns ["s","l","k","j","s","v","s","m","v","k","s"]
b9b = group' [3, 4, 6,67,7] -- returns [[3],[4],[6],[67],[7]]

group' [] = []
group' (a:as)
 | as == [] = [[a]]
 | otherwise = [a]:(group' as)

--pembatas

b10 = splitAt' 3 "winkjsdfwf" -- returns ("win","kjsdfwf")

splitAt' i b = (take' i b, drop' i b)

--pembatas

b11 = partition' (\x -> x>7) [2,3,3,3,4,5,56,56] -- returns ([56,56],[2,3,3,3,4,5])
b11b = partition' (\x -> x<7) [2,3,3,3,4,5,56,56] -- returns ([2,3,3,3,4,5],[56,56])

partition' f x = [(filter' f x), (invFilter' f x)]

invFilter' f [] = []
invFilter' f (x:xs)
   | (f x) = (invFilter' f xs)
   | otherwise = x:(invFilter' f xs)

--pembatas

b12 = replicate' 10 'f' -- returns "ffffffffff"

replicate' a b
 | a < 1 = []
 | otherwise = b:(replicate (pred a) b)

--pembatas

b13 = words' " wisnu oktobrie putra    subekti" -- returns ["wisnu","oktobrie","putra","subekti"]

aword [] = []
aword (w:ws)
  | w == ' ' = aword ws
  | otherwise = (takeWhile' (\x -> x /= ' ') (w:ws))

sisaword [] = []
sisaword (w:ws)
  | w == ' ' = sisaword ws
  | otherwise = (dropWhile (\x -> x /= ' ') (w:ws))

words' [] = []
words' b
 | sisaword y == [] = [aword y]
 | otherwise = (aword y):(words' (sisaword y))
 where y = repWthSpace' b   -- replace whitespaces that are not spaces with spaces

repWthSpace' [] = []
repWthSpace' (x:xs)
  | (x >= ' ') = x:(repWthSpace' xs)
  | otherwise = ' ':(repWthSpace' xs)

--pembatas

b14 = lines' "\nwisnu\nina\n\nzhuge\nsima" -- returns ["wisnu","ina","zhuge","sima"]

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

-- iseng-iseng bikin indexOf, bisa, tapi nggak kepake.

indexOf a [] = -1
indexOf a (d:ds)
 | (notElem' a (d:ds)) = -1
 | d /= a = 1 + (indexOf a ds)
 | otherwise = 0

-- Bikin swap' jugua. Nyaris pakai ini untuk sort. Tapi nggak perlu ternyata.

swap' a b h = (take mi h) ++ [(nth' h ma)] ++ (take (ma-mi-1) (drop (mi+1) h)) ++ [(nth' h mi)] ++ (drop (ma+1) h)
 where ma = max' a b
       mi = min' a b
