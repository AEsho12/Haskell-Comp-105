--Yes. This program can be written as a pure function. For a program to be a pure function the values need to be outputted as the same value. If the program produces a different value means that the global state of the integer has been affected. If the integer was a + b the output will still come to the same answer even after addition and being squared. 
--Yes. The reason why I believe this is because the user can unput any URL into the program and return with an output of the front page. This allows it to be able to be implemented as a pure function because no matter URL the program will still output a HTML source code for that website. Meaning there has been no side effects effecting any change or giving it an different output to the website which would make it unpure.
--No. The reason for this is because the program can be ran a million times and produces a million different outcomes of orders for the cards. This cannot be implemented as pure function because multiple different times different values can be returned back to the user. If the program was able to return it  back in the same order as it was inputted than it could be implemented as a pure function. 





plus_one x = x + 1
