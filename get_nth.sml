type date = int * int * int;

fun get_nth(list: 'a list, n: int) =
  if n = 1
  then hd list
  else get_nth(tl list, n - 1);

fun get_nth_test() =
  if get_nth([1, 2, 3], 1) <> 1
  then raise Fail "Test failed at 1 case."
  else 

  if get_nth([1, 2, 3], 2) <> 2
  then raise Fail "Test failed at 2 case."
  else

  if get_nth([1, 2, 3], 3) <> 3
  then raise Fail "Test failed at 3 case."
  else

  print("Test of get_nth passed.");


fun date_to_string(date: date) = 
  get_nth(["January", 
      "February", 
      "March", 
      "April", 
      "May", 
      "June", 
      "July", 
      "August", 
      "September", 
      "October", 
      "November", 
      "December"], #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date);
  
fun date_to_string_test() =
  if date_to_string((2022,2,28)) <> "February 28, 2022"
  then raise Fail "Test failed at 1 case."
  else 
  
  if date_to_string((2022,6,2)) <> "June 2, 2022"
  then raise Fail "Test failed at 2 case."
  else 
  
  if date_to_string((2022,2,24)) <> "February 24, 2022"
  then raise Fail "Test failed at 3 case."
  else 

  print("Test of date_to_string passed \n");

get_nth_test();
date_to_string_test();