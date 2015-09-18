-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Template where

import Data.List

-- 1.a

null' x = x

--pembatas

take' x = x

--pembatas

drop' x = x

--pembatas

fst' x = x

--pembatas

snd' x = x

--pembatas

map' x = x

--pembatas

filter' x = x

--pembatas

--delete' x = x

--pembatas

--deleteAll' x = x

--pembatas

foldl (\ x y -> y) 3 [2, 3, 4]

--pembatas

foldl1' x = x

--pembatas

a = zip [2, 3, 4] [6, 7, 8] -- returns [(2,6),(3,7),(4,8)]

--pembatas

b = zipWith (\ x y -> 2*x+y) [1,2] [4, 5] -- returns [6, 9] because 2*1+4=6 and 2*2+5= 9

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem 2 [1, 2, 3, 4] -- returns True
elem 2 [1, 3, 4] -- returns False

--pembatas

notElem 2 [1, 2, 3, 4] -- returns False
notElem 2 [1, 3, 4] -- returns True


--pembatas

head [2, 3, 4, 5] -- returns 2

--pembatas

length [3, 4, 5, 6] -- returns 4

--pembatas

reverse [1, 2, 3, 4] -- returns [4, 3, 2, 1]

--pembatas

last [3, 4, 5, 6] -- returns 6

--pembatas

tail [3, 4, 5, 6] -- returns [4, 5, 6]

--pembatas

init [3, 4, 5, 6] -- returns [3, 4, 5]

--pembatas

max 8 4 -- returns 8

--pembatas

min 8 4 -- returns 4

--pembatas

concat ["wisnu", "sima"] -- returns "wisnusima"
concat [[1, 2], [5, 6]] -- returns [1,2,5,6]

--pembatas

intersperse 'a' "qrtgd" -- returns "qaratagad"
intersperse 2 [1, 3, 4, 6, 7] -- returns [1,2,3,2,4,2,6,2,7]

--pembatas

intercalate "wisnu" ["zhuge", "sima", "ina"] -- returns "zhugewisnusimawisnuina"

--pembatas

and [True, False, True] -- returns False

--pembatas

or [True, False, True] -- returns True

--pembatas

zip3 "abcd" "efgh" "ijkl" -- returns [('a','e','i'),('b','f','j'),('c','g','k'),('d','h','l')]

--pembatas

sum [1, 2, 4] -- returns 7

--pembatas

product [1, 2, 4] -- returns 8

--pembatas

words "wisnu oktobrie putra subekti" -- returns ["wisnu","oktobrie","putra","subekti"]

--pembatas

lines "wisnu\nina\nzhuge\nsima" -- returns ["wisnu","ina","zhuge","sima"]

--pembatas

unlines ["wisnu","ina","zhuge","sima"] -- returns "wisnu\nina\nzhuge\nsima\n"

--pembatas

unwords ["wisnu","oktobrie","putra","subekti"] -- returns "wisnu oktobrie putra subekti"

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap (\ x -> [2*x, 3*x]) [2, 3] -- returns [4,6,6,9]

--pembatas

all (\ x -> x==1) [1, 2, 3, 4] -- returns False
all (\ x -> x==1) [1, 1, 1, 1] -- returns True

--pembatas

any (\ x -> x==1) [1, 2, 3, 4] -- returns True
any (\ x -> x==1) [2, 3, 4] -- returns False

--pembatas

insert 'a' "lsdkjasf" -- returns "alsdkjasf"

--pembatas

zipWith3 (\ x y z -> x+y+z) [9, 8, 7] [6, 5, 4] [3, 2, 1] -- returns [18,15,12]

--pembatas

-- 1.b

nub "sdskjls" -- reutrns "sdkjl"

--pembatas

sort "sokwjfweg" -- returns "efgjkosww"

--pembatas

minimum "oikjwkefwef" -- returns 'e'

--pembatas

maximum "oikjwkefwef" -- returns 'w'

--pembatas

inits "wlkfjqiomg" -- returns ["","w","wl","wlk","wlkf","wlkfj","wlkfjq","wlkfjqi","wlkfjqio","wlkfjqiom","wlkfjqiomg"]

--pembatas

tails "wlkfjqiomg" -- reutns ["wlkfjqiomg","lkfjqiomg","kfjqiomg","fjqiomg","jqiomg","qiomg","iomg","omg","mg","g",""]

--pembatas

union "wisnu " "oktobrie" -- returns "wisnu oktbre"

--pembatas

intersect "slkdjs" "qokfc" -- returns "k"
intersect "qlqkncnqtnslewt" "snqw veefkje" -- returns "qqknnqnsew"

--pembatas

group "slkjsvsmvks" -- returns ["s","l","k","j","s","v","s","m","v","k","s"]
group [3, 4, 6,67,7] -- returns [[3],[4],[6],[67],[7]]

--pembatas

splitAt 3 "winkjsdfwf" -- returns ("win","kjsdfwf")

--pembatas

partition (\x -> x>7) [2,3,3,3,4,5,56,56] -- returns ([56,56],[2,3,3,3,4,5])
partition (\x -> x<7) [2,3,3,3,4,5,56,56] -- returns ([2,3,3,3,4,5],[56,56])

--pembatas

replicate 2 4 -- returns [4,4]
replicate 10 'f' -- returns "ffffffffff"

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
