type date = int * int * int;

fun number_in_month(dates: date list, month: int) =
  if null dates
  then 0
  else
  
  (* Якщо дата є в місяці то +1, інакше +0. Рекурсія *)
  if #2 (hd dates) = month
  then 1 + number_in_month(tl dates, month)
  else number_in_month(tl dates, month);


fun number_in_month_test() =
  if number_in_month([(1, 1, 1), (2, 1, 1)], 1) <> 2
  then raise Fail "Test failed at 1 case."
  else

  if number_in_month([], 1) <> 0
  then raise Fail "Test failed at 2 case."
  else

  if number_in_month([(1, 2, 1)], 1) <> 0
  then raise Fail "Test failed at 3 case."
  else

  print("Test of number_in_month passed.");



fun is_date_in_months(date: date, months: int list) = 
  if null months
  then false
  else
  
  if #2 date = (hd months)
  then true
  else is_date_in_months(date, tl months);

fun number_in_months(dates: date list, months: int list) = 
  if null dates
  then 0
  else
  
  if is_date_in_months(hd dates, months)
  then 1 + number_in_months(tl dates, months)
  else number_in_months(tl dates, months);

fun number_in_months_test() =
  if number_in_months([(1, 1, 1), (1, 2, 1)], [1, 2]) <> 2
  then raise Fail "Test failed at 1 case."
  else

  if number_in_months([(1, 1, 1), (1, 2, 1)], [3, 4]) <> 0
  then raise Fail "Test failed at 2 case."
  else

  if number_in_months([], [1]) <> 0
  then raise Fail "Test failed at 3 case."
  else

  if number_in_months([(1, 2, 1)], [1]) <> 0
  then raise Fail "Test failed at 4 case."
  else

  print("Test of number_in_months passed.");



number_in_month_test();
number_in_months_test();