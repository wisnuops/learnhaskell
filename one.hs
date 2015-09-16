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
