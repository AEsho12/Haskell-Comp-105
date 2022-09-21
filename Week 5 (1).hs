--Lecture 12 
plus_ten x = x +10
is_twenty x = x == 20
three_power n = 3*n
power_three n = n*n*n

xisy x y   = x ++ " is " ++ y 
cakeis x  = xisy "cake"

--Lecture 13
-- (num a) => a -> a -> a
func1 a b = a + b + 2

-- (Integral a Fractional b) => a -> b -> (a, b)
func2 a b = (a ‘div‘ 2, b / 2)

-- Eq a => [a] -> Bool 
func3 (x:y:xs) = x == y

-- Eq (num a) => (a) -> int -> int -> int
func4 [] = []
func4 (x:xs)
    | x > 0 = x : func4 xs
    | otherwise = func4 xs

--Lecture 14
(\ x -> x -> x - 1)
(\ x y -> show x ++ show y)
(\ (x,y) -> (y,x))
(\ (x:y:xs) -> y)

--Lecture Function composittion 
head . head $ [[1]]
(+1) . (*2) $ 4
sum  . tail . tail $ [1,2,3,4]
filter [>10] . map (*2) $ [1..10]

--Lecture 15 
triple_list list = map (*3) list 

list _to_ str list = map (show) list 

second_char list = map (\ (_:y:_) -> y) list 









