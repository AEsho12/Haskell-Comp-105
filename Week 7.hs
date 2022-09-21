--Lecture 19 - Custom Types
--Question 1, 2 , 3
data Direction = North | East | South | West 
                                deriving (Show, Eq, Read, Ord)
                                
--Question 4 
--is_north c 
  --     | c == North = True 
  --     otherwise False
                        
        
--Question 5 
dir_to_int c
         | c == North = 1
         | c == East  = 2
         | c == South = 3
         | c == West  = 4

--Lecture 19 - Types with data
data Point = Point Int Int deriving (Show)
--Question 1
 
--same (int x) = int x x

--Question 2
--is_zero 

--Question 3 
mult_point (Point x y) = x * y

-- Question 4
up_two (Point x y) = Point x (y+2)

--Question 5 
add_points (Point a b) (Point c d) = Point (a+c) (b+d)

--Lecture 21 Maybe 
--Question 1
-- :t Just "helloe
-- :t Just False 
-- :t Nothing 
--Question 2 
not_nothing :: Eq a => Maybe a -> Bool 
not_nothing Nothing = False 
not_nothing _ = True 
                               
--Question 3 
mult_maybe :: Maybe Int -> Maybe Int -> Maybe Int
mult_maybe (Just x) (Just y) = Just (x*y)
mult maybe _ Nothing = Nothing 
mult maybe Nothing _ = Nothing 

--Lecture 21 - Either.

--Question 2 
return_two :: Int -> Either Bool Char
return_two 1 = Left True 
return_two _ = Right 'a'

--Question 3 
show_right :: Either String Int -> String
show_right (Left x)  = x 
show_right (Right y) = show y

