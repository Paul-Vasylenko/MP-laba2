type date = int * int * int;

fun is_older(a: date, b: date) =
  (* Bigger year *)
  if (#1 a < #1 b)
  then true
  else 

  (* Bigger month *)
  if (#1 a = #1 b andalso #2 a < #2 b)
  then true
  else 

  (* Bigger day *)
  if (#1 a = #1 b andalso #2 a = #2 b andalso #3 a < #3 b)
  then true
  else 

  false;


fun is_older_test() =
  if is_older((2022, 1, 1), (2023, 1, 1)) <> true
  then raise Fail "Test failed at 1 case."
  else

  if is_older((2022, 10, 1), (2022, 11, 1)) <> true
  then raise Fail "Test failed at 2 case."
  else

  if is_older((2022, 10, 8), (2022, 10, 18)) <> true
  then raise Fail "Test failed at 3 case."
  else
  
  if is_older((2022, 10, 8), (2022, 10, 8)) <> false
  then raise Fail "Test failed at 4 case."
  else

  print("Test of is_older passed.\n");


is_older_test()