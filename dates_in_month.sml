type date = int * int * int;

fun is_date_in_months(date: date, months: int list) = 
  if null months
  then false
  else
  
  if #2 date = (hd months)
  then true
  else is_date_in_months(date, tl months);

fun dates_in_month(dates: date list, month: int) =
  if null dates
  then []
  else

  if #2 (hd dates) = month
  then (hd dates) :: dates_in_month(tl dates, month)
  else dates_in_month(tl dates, month)

fun dates_in_month_test() = 
  if dates_in_month([(1, 1, 1), (1, 2, 3), (1, 1, 4)], 1) <> [(1,1,1), (1,1,4)]
  then raise Fail "Test failed at 1 case."
  else

  if dates_in_month([(1, 2, 1), (1, 2, 3), (1, 2, 4)], 1) <> []
  then raise Fail "Test failed at 2 case."
  else

  if dates_in_month([(1, 1, 1), (1, 1, 3), (1, 1, 4)], 1) <> [(1,1,1), (1, 1, 3), (1,1,4)]
  then raise Fail "Test failed at 3 case."
  else

  print("Test of dates_in_month passed\n");


fun dates_in_months(dates: date list, months: int list) = 
    if null dates
    then []
    else

    if is_date_in_months(hd dates, months)
    then (hd dates) :: dates_in_months(tl dates, months)
    else dates_in_months(tl dates, months)


fun dates_in_months_test() = 
  if dates_in_months([(1, 1, 1), (1, 2, 3), (1, 1, 4)], [1]) <> [(1,1,1), (1,1,4)]
  then raise Fail "Test failed at 1 case."
  else

  if dates_in_months([], [1]) <> []
  then raise Fail "Test failed at 2 case."
  else

  if dates_in_months([(1, 1, 1), (1, 1, 3), (1, 1, 4)], []) <> []
  then raise Fail "Test failed at 3 case."
  else

  if dates_in_months([(1, 1, 1), (1, 2, 3), (1, 3, 4)], [1,2,3]) <> [(1, 1, 1), (1, 2, 3), (1, 3, 4)]
  then raise Fail "Test failed at 4 case."
  else


  print("Test of dates_in_months passed\n");

dates_in_month_test();
dates_in_months_test();

