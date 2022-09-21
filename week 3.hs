--Lecture 7 - Recursion 
--1
powThirteen 0 = 1
powThirteen n = 13 + powThirteen(n - 1)

--2 
pow3 0 = 1 
pow3 n = 3 * pow3 (n-1) 

--3 
odd_sum n 
        | n == 1 = 1 
        | n `mod` 2 == 0 = odd_sum(n-1) 
        | otherwise = n + odd_sum(n-1)
--4
lucas 0 = 2
lucas 1 = 1
lucas n = lucas(n-1) + lucas(n-2) 

--Lecture 8 
--1 
half_sum []     = 0
half_sum (x:xs) = x/2 :  half_sum xs

--2
mult2 []     = []
mult2 (x:xs) = x * mult2 xs

--3
drop_evens 0 = []
drop_evens (x:xs)
         | x `mod` 2 == 1 = x : drop_evens
         | otherwise = drop_evens xs 
          
           
--4
mult_adjacent []    = [] 
mult_adjacent [x]   = error "Odd number of elements" 
mult_adjacent (x:y:xs) = x*y : mult_adjacent xs  

--5
get_ele elem i [] = error "called with zero" 
get_ele elem i (x:xs)
           | i == x      = correct  
           | i otherwise = elem i xs 
           
--6 
drop_ele [] = error "Not in list" 
drop_ele [i] = i
drop_ele (x:xs) drop_ele (n-1)


--Lecture 9 
--1 
div_list [] []  = []
div_list (x:xs) (y:ys) = (x / y) : div_list xs ys 

--2 
longer [] _ = False
longer _ [] = True
longer (x:xs) (y:ys) = longer xs ys 

--3
vowels_and_consonants [] = ([] , [])
vowels_and_consonants (x:xs) 
                    |  elem x ['a','e','i','o','u'] == True = (x : first, second)
                    |  otherwise                            = (first,  x : second) 
                    where (first,second) = vowels_and_consonants xs                    
                 
                  

 








