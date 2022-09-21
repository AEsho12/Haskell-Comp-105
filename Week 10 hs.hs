--Lecture 26 - Lazy evaluation 

--1.f True 1 0 3
--f True 1 2 (error "error")
--3.f False 1 0 3
--4.f False 1 0 (error "error")
--5.f True 1 2 (f False 1 2 (error "error"))

--Question 4 would return an error becuase input b is false and it wants to devide 1 by 0 which will return an error 


--Lecture 26 - Lazy evaluation on lists

--Question 1 will terminate because the query is asking for the first 4 numbers in the list starting from 1.
--Question 4 will also terminate becuase it only goes up to index 999

--Lecture 27 - Tail recursion
--q1
product' :: [Int] -> [Int]
product_tail []     acc = acc
product_tail (x:xs) acc = sum_tail xs $! 
product' list = product_tail list 1

--q2
sum_up_to :: int -> int 
sum_up_to n = sum2 n 0 
sum2 0 z = z
sum2 n z = sum2 (n - 1) $! (z + n)


--Lecture 27 - Folds
--q1
product_of_evens :: [Int] -> int list = foldr (\ x acc -> 
           if even x then x * acc else acc)

--q2


--q3
evenElements :: [Int] -> [Int]
evenElements list = fold' (\acc ++ [x] -> if even x then acc ++ [x] else acc) [] list 
