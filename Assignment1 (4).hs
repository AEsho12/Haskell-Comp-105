-- Do not alter the following line
module Assignment1 (char_to_int, repeat_char, decode, int_to_char, length_char, 
drop_char, encode, complex_encode, complex_decode) where


-- Part A
char_to_int :: Char -> Integer
char_to_int '0' = 0 
char_to_int '1' = 1 
char_to_int '2' = 2 
char_to_int '3' = 3 
char_to_int '4' = 4
char_to_int '5' = 5 
char_to_int '6' = 6 
char_to_int '7' = 7 
char_to_int '8' = 8
char_to_int '9' = 9   
--char_to_int = error "Not implemented"


repeat_char :: Char -> Integer -> String
repeat_char x 1 = [x]
repeat_char x n = x : repeat_char x (n - 1) 
--repeat_char = error "Not implemented"

decode :: String -> String
decode [] = []
decode (x:y:xs) = (repeat_char x (char_to_int y)) ++ decode xs
--decode = error "Not implemented"

--Part B 
int_to_char :: Integer -> Char
int_to_char 0 = '0'
int_to_char 1 = '1'
int_to_char 2 = '2'
int_to_char 3 = '3'
int_to_char 4 = '4'
int_to_char 5 = '5'
int_to_char 6 = '6'
int_to_char 7 = '7'
int_to_char 8 = '8'
int_to_char 9 = '9'
--int_to_char = error "Not implemented"

length_char :: Char -> String -> Integer
length_char a [] = 0
length_char a (x:xs) 
            | x == a = 1 + length_char a xs 
            | otherwise = 0             
--length_char = error "Not implemented"  

drop_char :: Char -> String -> String
drop_char c [] = []
drop_char c (x:xs) 
          | x == c = drop_char c xs 
          | otherwise = (x:xs)
--drop_char = error "Not implemented"


encode :: String -> String
encode []  = [] 
encode (x:xs) = 
            let
              z = length_char x (x:xs)         
              g = int_to_char z 
            in x:g : encode (drop_char x xs)  
--encode = error "Not implemented"

-- Part C

complex_encode :: String -> String
complex_encode = error "Not implemented"

complex_decode :: String -> String
complex_decode = error "Not implemented"


