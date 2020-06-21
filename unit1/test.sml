use "code.sml";
val test1 = is_older((2020,6,1),(2020,6, 5)) = true
val test2 = is_older((2020,5,10),(2020,6, 5)) = true
val test3 = is_older((2019,6,5),(2020,6, 5)) = true
val test4 = is_older((2020,6,5),(2020,6, 5)) = false
val test5 = is_older((2020,6,11),(2020,6, 5)) = false
val test6 = is_older((2020,7,1),(2020,6, 5)) = false
val test7 = is_older((2021,6,1),(2020,6, 5)) = false

val test21 = number_in_month([], 8) = 0
val test22 = number_in_month([(2020,8,4),(2020,8,5),(2020,9,10)], 8) = 2

val test31 = number_in_months([], [4]) = 0
val test32 = number_in_months([(2020,7,4),(2020,8,5),(2020,9,10)], [7,8]) = 2

val test41 = dates_in_month([], 9) = []
val test42 = dates_in_month([(2015,8,8)], 9) = []
val test43 = dates_in_month([(2015,8,8)], 8) = [(2015,8,8)]		  
val test44 = dates_in_month([(2020,7,4),(2020,8,5),(2020,8,10)], 8) = [(2020,8,5),(2020,8,10)]								

val test51 = dates_in_months([], []) = []
val test52 = dates_in_months([(2015,8,8)], [9]) = []
val test53 = dates_in_months([(2015,8,8)], [8]) = [(2015,8,8)]		  
val test54 = dates_in_months([(2020,7,4),(2020,8,5),(2020,8,10),(2020,9,3)], [7,8]) = [(2020,7,4),(2020,8,5),(2020,8,10)]

val test61 = get_nth(["8","4","9","3","0"],3)= "9"

val test71 = date_to_string((2020,2,4)) = "February 4, 2020"		
			 
val test81 = function_number_before_reaching_sum(10, [1,4,5,6,7]) = 3

val test91 = what_month(100) = 4									
val test101 = month_range(100,101) = [4]
val test102 = month_range(100,141) = [4,5]					 
val test111 = oldest([(2020, 5,6),(2020,5,7)]) = SOME(2020,5,6)
