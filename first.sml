(* this is a comment. This is our first program *)

fun swap (pr: int * bool)=
    (#2 pr, #1 pr)

fun sum_two_pairs (pr1 : int*int , pr2: int * int)=
    (#1 pr1)+(#2 pr1)+(#1 pr2)+(#2 pr 2)