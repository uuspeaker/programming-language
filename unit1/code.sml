
fun is_older = (first_date: int * int * int , second_date: int * int * int) =
	  if (#1 first_data = #1 second_date
	  then if #2 first_data = #2 second_dat
		     then if #3 first_data = #3 second_dat
			        then false
							else #3 first_data < #3 second_dat
		    else #2 first_data < #2 second_dat
	  else #1 first_data < #1 second_dat



(*
val number_in_month = fn : (int * int * int) list * int -> int
val number_in_months = fn : (int * int * int) list * int list -> int
val dates_in_month = fn : (int * int * int) list * int -> (int * int * int) list
val dates_in_months = fn : (int * int * int) list * int list -> (int * int * int) list
val get_nth = fn : string list * int -> string
val date_to_string = fn : int * int * int -> string
val number_before_reaching_sum = fn : int * int list -> int
val what_month = fn : int -> int
val month_range = fn : int * int -> int list
val oldest = fn : (int * int * int) list -> (int * int * int) option
*)
