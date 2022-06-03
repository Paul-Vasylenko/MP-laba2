

fun number_before_reaching_sum(sum : int, numbers: int list) =
    if null numbers
    then 0
    else

    if sum <= hd numbers
    then 0
    else 1 + number_before_reaching_sum((sum - (hd numbers)), (tl numbers));


fun number_before_reaching_sum_test() =
    if number_before_reaching_sum(10, [1, 3, 9, 11, 22, 33]) <> 2
    then raise Fail "Test failed at 1 case (number_before_reaching_sum)"
    else

    if number_before_reaching_sum(1, [1, 3, 9, 11, 22, 33]) <> 0
    then raise Fail "Test failed at 2 case (number_before_reaching_sum)"
    else

    if number_before_reaching_sum(14, [1, 3, 9, 11, 22, 33]) <> 3
    then raise Fail "Test failed at 3 case (number_before_reaching_sum)"
    else

    print("Test of number_before_reaching_sum passed.");

fun what_month(day: int) =
    let 
        val days_in_month = [
            31,
            28,
            31,
            30,
            31,
            30,
            31,
            31,
            30,
            31,
            30,
            31
        ]
    in 
        number_before_reaching_sum(day, days_in_month) + 1
    end;

fun what_month_test() = 
    if what_month(1) <> 1
    then raise Fail "Test failed at 1 case"
    else

    if what_month(31) <> 1
    then raise Fail "Test failed at 2 case"
    else

    if what_month(32) <> 2
    then raise Fail "Test failed at 3 case"
    else

    if what_month(365) <> 12
    then raise Fail "Test failed at 4 case"
    else

    print("Test of what_month passed.");


number_before_reaching_sum_test();
what_month_test();

fun months_range(day1: int, day2: int) =
    if day1 > day2
    then []
    else what_month(day1) :: months_range(day1+1, day2);

fun months_range_test() =
    if months_range(2,1) <> []
    then raise Fail "Test failed at 1 case"
    else

    if months_range(1,1) <> [1]
    then raise Fail "Test failed at 2 case"
    else

    if months_range(30, 35) <> [1,1,2,2,2,2]
    then raise Fail "Test failed at 3 case"
    else

    print("Test on months_range passed.");


months_range_test();