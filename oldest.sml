type date = int * int * int;

fun is_older(a: date, b: date) =
  if (#1 a < #1 b)
  then true
  else 

  if (#1 a = #1 b andalso #2 a < #2 b)
  then true
  else 

  if (#1 a = #1 b andalso #2 a = #2 b andalso #3 a < #3 b)
  then true
  else 

  false;

fun oldest_search(dates: date list, oldest_date: date) =
  if null dates 
  then oldest_date
  else

  if is_older(oldest_date, hd dates)
  then oldest_search(tl dates, oldest_date)
  else oldest_search(tl dates, hd dates)

fun oldest(dates: date list) =
  if null dates
  then NONE
  else

  SOME(
    oldest_search(tl dates, hd dates)
  )

fun oldest_test() =
  if oldest([(1, 1, 1), (1, 2, 1)]) <> SOME((1, 1, 1))
  then raise Fail "Test failed at 1 case."
  else

  if oldest([(1, 1, 1), (1, 1, 1)]) <> SOME((1, 1, 1))
  then raise Fail "Test failed at 2 case."
  else

  if oldest([]) <> NONE
  then raise Fail "Test failed at 3 case."
  else

  print("Test of oldest passed.");

oldest_test();
