--Lecture 23 – getLine and putStrLn.
--Question 1 
--getLine IO action.

--Question 2 
--putStrLn "hello"

--q3 
echo :: IO ()
echo = do
    str <- getLine
    putStrLn str

--q4 
double_echo :: IO ()
double_echo = do 
     x <- getLine
     putStrLn x
    
--q5 
put_two_strs :: IO ()
put_two_strs = do 
     x <- getLine
     x <- getLine
     putStrLn x
     
--Lecture 23 Let in do blocks 
plus_one :: IO ()
plus_one = do
    str <- getLine
    let n = read str :: Int
        out = n + 1
    putStrLn (show out)
    
--q1 
times_two :: IO ()
times_two = do
    str <- getLine
    let n = read str :: Int
        out = n * n
    putStrLn (show out)

--q2 
add :: IO ()
add = do
    str <- getLine
    let n = read str :: Int
    let a = read str :: Int
        out = n + a
    putStrLn (show out)  
    
--q3
guess_42 :: IO ()
guess_42  = do
    str <- getLine
    let n = read str :: Int
    if  n == 42 then "Correct" otherwise "Wrong"
        out = 
        putStrLn (show out) 
        
    
--Lecture 24 – Looping in IO code    
echo_forever :: IO ()
echo_forever = do
    str <- getLine
    putStrLn str
          echo_forever
--q1
add_one_forever :: IO ()
add_one_forever = forever (do
    x <- putStr "Enter a number: " >> readLn
    print (x + 1))

--q2
echo_until_quit :: IO ()
echo_until_quit = do
    inp <- putStrLn "Enter some text" >> getLine
    if inp == "quit"
    then return ()
    else putStrLn inp >> echo_until_quit

              





    