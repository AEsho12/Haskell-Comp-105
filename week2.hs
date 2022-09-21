--Lecture 4 -Ifs

--1 
gt_100 x = (if x > 100 then 1 else 0) 

--2 
switch x y c (if c==1 then x else y)

--3
fizzbuzz x = if x `mod` 3 == 0 && x `mod` 5 ==  0) then "fizzbuzz"else "nope"

--Lecture 4 - Let expressions 

--question 1 
f x = let
                 a = x * x 
              in 
                 2 * a 

--question 2 
f x = let
                 a = x + 1 
                 b = a * a 
                 c = 2 * a 
              in
                 a + b - c


--question 3 
bounded_sqaure x x * x = if (x * x > 100 then a else 100 ) 

--Lecture 5 - List functions 

--1 
square_and_cube x = (x*x, x*x*x) 

--2
add_turple (a, b) = a + b

--3
swap (x,y) = (y,z)

--Lecture 5 - Lists 

--1
head_sqaured list = 2 ^ head list 


--2
third list list !! 3 

--3 
third_head list = head (tail list)

--4
prepend_two a b : list

--Lecture 5 - List functions 

--1
two_lenghts list1 list2 = length(list ++ list2)

--2
make_palindroms list ++ reverse list

--3
sum_and_product list = (sum list, product list)

--4
four_through_six take = take 4 drop 3 "list"

--5
both_in list x y = x y elem list

--Lecture 6 - List ranges

--1
[101..200

--2
[1000,1002..1050

--3
[20,19..1]

--4
[999,1002..]

--Lecture 6 - List comprehensions
--1
[ 2*x | x <- [1..10] ]

---2
only_odds list  = [x | x <- [1..list], x `mod` 2 == 1]

--3
between a b list = [x | x <- [1..list], a < b 

--4
number_of_es string = [x | x <- string, x == `e1]






