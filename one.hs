module One where
import Data.List

square x = x*x
wisnu p = square p - 2*p + 3
kecap a b c x
  | x == 1 = ((-b) + det)/ (2*a)
  | x == 2 = ((-b) - det)/ (2*a)
    where det = sqrt (b^2 - 4*a*c)

mutlak x = if x>=0 then x else (-x)

isgede x
  | x >= 1000000 = "GEDEE"
  | 1000 <= x && x < 1000000 = "Yah, mayan"
  | x < 1000 = "kecill"

ngasal x y
  | x == y = "sama"
  | x <= y = "kecil"
  | x >= y = "guedee"
  | otherwise = "ngasal"

ngasal2 x
  | x >= 0 && x < 5 = "0 sampe 5"
  | ((-2) < x) && (x < 3) = "gitu deh"
  | (1 < x) && (x < 10) = "nagini"
  | otherwise = "woi.."

-- n! = n (n-1)(n-2)....

faktorial n
  | n <= 1 = 1
  | otherwise = n * faktorial (n-1)

rekurRekuran x
  | x == 0 = "yeii"
  | otherwise = rekurRekuran (x-1)

rekurLengkap x
  | x == 0 = "yeiii"
  | x < (-10) = "itulah"
  | otherwise = rekurLengkap (x-1)

-- sum' x
  -- | x == [] = 0
  -- | otherwise sum

length' [] = 0
length' (x:xs) = 1 + length' (xs)

sum' [] = 0
sum' (x:xs) = x + sum' (xs)
