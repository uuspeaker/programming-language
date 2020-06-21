fun is_older (date1 : (int*int*int), date2 : (int*int*int)) = 
    if #1 date1 = #1 date2
    then if #2 date1 = #2 date2
	 then if #3 date1 = #3 date2
	      then false
	      else #3 date1 < #3 date2
	 else #2 date1 < #2 date2
    else #1 date1 < #1 date2

fun number_in_month (dates : (int*int*int) list, month : int) =
    if null dates
    then 0
    else let fun is_in(target : int) =
		 if target = month then 1 else 0
         in
	     is_in(#2 (hd dates)) + number_in_month(tl dates, month)
         end					       

fun number_in_months (dates : (int*int*int) list, months : int list) =
    if null dates orelse null months
    then 0
    else number_in_month(dates, hd(months)) + number_in_months(dates, tl(months))

fun dates_in_month (date_list : (int*int*int) list, month : int) =
    if null date_list
    then []
    else
	let val tl_ans = dates_in_month (tl date_list, month)
	in if #2 (hd date_list) = month 
	   then hd date_list :: tl_ans
	   else tl_ans
	end	    

fun dates_in_months (date_list : (int*int*int) list, months : int list) =
    if null date_list orelse null months 
    then []
    else
	let val tl_ans = dates_in_months (date_list,tl months)
            val hd_ans = dates_in_month(date_list, hd months)		
	in  
	   hd_ans @ tl_ans
	end	    

fun get_nth(data_list : string list, index : int) =
    if index = 1
    then hd data_list
    else get_nth(tl data_list, index-1)

fun date_to_string(date : int*int*int) =
    get_nth(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],#2 date)^" "^ Int.toString(#3 date)^", "^Int.toString(#1 date) 		   

fun function_number_before_reaching_sum(sum : int, int_list : int list) =
    if null int_list
    then 0
    else
	if sum < (hd int_list)
	then 0
	 else 1 + function_number_before_reaching_sum(sum - (hd int_list), tl int_list)

fun what_month(day : int) =
    function_number_before_reaching_sum(day, [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]) + 1

fun month_range(day1 : int, day2 : int) =
    if day1 > day2
    then []
    else
       let fun append(n1 : int, n2: int) =
            if n1 = n2
  	    then [n1]
	    else n1 :: append(n1+1, n2)
       in
	   append(what_month(day1), what_month(day2))
       end

fun oldest(date_list : ( int*int*int)  list) =
    if null date_list
    then NONE
    else let val oldest_tf =  oldest(tl date_list)
	     val date_hd = hd date_list			    
         in
	     if isSome oldest_tf andalso is_older(valOf oldest_tf , date_hd)
	     then oldest_tf
	     else SOME(date_hd)
	 end
