--q1
char_to_int '1' = 1
char_to_int '2' = 2
char_to_int '3' = 3
char_to_int '4' = 4
char_to_int '5' = 5
char_to_int '6' = 6
char_to_int '7' = 7
char_to_int '8' = 8
char_to_int '9' = 9

--q2
repeat_char c 0 = []
repeat_char c n = c : (repeat_char c (n-1))

--q3
decode [] = []
decode (x:y:xs)= x : (repeat_char x ((char_to_int y) -1)) ++ decode xs

--q4
int_to_char 1 = '1'
int_to_char 2 = '2'
int_to_char 3 = '3'
int_to_char 4 = '4'
int_to_char 5 = '5'
int_to_char 6 = '6'
int_to_char 7 = '7'
int_to_char 8 = '8'
int_to_char 9 = '9'

--q5
length_char c [] = 0
length_char c (x:xs)
          | c==x = 1+(length_char c xs) 
          | otherwise = 0 
		  
--q6		  
drop_char c [] = []
drop_char c (x:xs)
        | x == c = (drop_char c xs)
        | otherwise = (x:xs)
