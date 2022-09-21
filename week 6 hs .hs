--Lecture 16 - Fold 
--Question 1 
list_product list = foldr (*) [] list

--Question 2 
list_any list = foldr (||) True list 

--Question 3 
product_of_evens list = foldr (\ x acc -> 
           if even x then x * acc else acc)
           
--Question 4 
lt10 list = foldr (\ x acc -> 
           if x > 10 then acc + 1 else acc)
           
--Lecture 17 - takeWhile and dropWhile 
--Question 1 
leading_caps = takeWhile (\ x -> length x <=1) 

--Question 2 

--Question 3 

--Lecture 17 - zipWith

--Question 1 

--Question 2 
and_list l1 l2 = zipWith (\x y -> x && y) l1 l2 
--Question 3 
is_palindrome x = and (zipWith (&&) (reverse x) x)
