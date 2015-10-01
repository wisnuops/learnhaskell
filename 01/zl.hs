module Zl where
import Data.List

-- 01 Coba jawab pertanyaan cupu yang satu ini, untuk ngetest kalo sistem udah jalan
-- Jika Un=n dan Sn menyatakan ∑k=1nUk maka S100=?

satu 1 = 1
satu n = n + satu (n-1)

no1 = satu 100 -- Hasilnya 5050

--- 02 Sesuai dengan definisi |x| yang terkenal itu, maka berapa nilai dari:
--- |x+1|+|x−2|+|x+3|+|x−4|+...+|x−100|
--- Untuk nilai x = 50

mutlak x
  | x >= 0 = x
  | x < 0 = -x

minIfEven x
  | (mod x 2 == 0) = (-1)*x
  | otherwise = x

dua x 1 = mutlak (x + 1)
dua x n = (dua x (n-1)) + mutlak (x + minIfEven n)

no2 = dua 50 100 -- Hasilnya 6250

-- 03 Berapakah 1209380934 jika dituliskan di basis 6?

listBaseTentoSix 0 = []
listBaseTentoSix x = listBaseTentoSix (div x 6) ++ [mod x 6]

no3 = listBaseTentoSix 1209380934 -- Hasilnya [3,2,0,0,0,1,1,2,1,4,5,0] inputnya: 320001121450

-- 04 baseTenToSix x = a +
-- listBaseTentoSix x

factorial 0 = 1
factorial n = n*factorial (n-1)

fungsiP x
  | x == 0 = 0
  | otherwise = fungsiP (div x 10) + factorial (mod x 10)

empat 1 = fungsiP 1
empat x = fungsiP x + empat (x-1)

no4 = empat 1000 -- Hasilnya 122734093

-- 05 Fibonacci

fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

no5 = fib 30 -- Hasilnya 832040

-- 06 kinematika

fungsiS t = map (\t -> 12*t + 120) t

-- Hasilnya [132,144,156,168,180,192,204,216,228,240]

-- 07 ekonomi mikro

fungsiR n = 15000000*n

fungsiE n = 75000000*n

revenue 1 = fungsiR 1
revenue n = fungsiR n + revenue (n-1)

expense 1 = fungsiE 1
expense n = fungsiE n + expense (n-1)

profit = revenue 12 - expense 4 -- Hasilnya 420000000

--- 08 prime numbers

prima (a:as)
  | a == 1 = prima as
  | as == [] = [a]
  | otherwise = a : prima (filter (\x -> (mod x a /= 0)) as)

no8 = product (prima [1..100]) -- Hasilnya 2305567963945518424753102147331756070

-- 09 jumlah semua x_i

no9 = sum [1..100] -- Hasilnya 5050

-- 10 triangle numbers

fungsiPb n = div ((1+n)*n) 2
jumlahin 1 = 1
jumlahin n = fungsiPb n + jumlahin (n-1)

no10 = jumlahin 100000 -- Hasilnya 166671666700000

-- 11 habis dibagi 210 (2*3*5*7)

no11 = (fungsiPb (div 100000000 210))*210 -- Hasilnya 23809526190450
