fun swap (pr:bool * int)=
(#2 pr, #1 pr)

fun sum_two_pairs(pr1: int*int, pr2:int*int)=
(#1 pr1 )+(#2 pr1 )+(#1 pr2 )+(#2 pr2 )


fun div_mod (x:int, y:int)=
(x div y, x mod y)

fun sort_pair (a: int * int)=
if #1 a > #2 a then (#2 a, #1 a) else a

fun sum_list (xs: int list ) = 
if null xs 
then 0 
else hd xs + sum_list(tl xs)

fun list_prod (xs: int list)=
    if null xs
    then 1
    else hd xs * list_prod(tl xs)

fun countdown (x: int) =
if x = 0
then []
else x:: countdown(x-1)

fun append(xs:int list, ys:int list)=
if null xs
then ys
else hd xs:: append(tl xs, ys)

fun sum_pair_list(xs: (int * int) list)=
if null xs
then 0
else  #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs) 

fun firsts(xs: (int * int)list)=
if null xs
then []
else #1 (hd xs)::firsts(tl xs)

fun seconds(xs: (int * int)list)=
if null xs
then []
else #2 (hd xs)::seconds(tl xs)

fun sum_pair_list2(xs: (int * int) list) =
(sum_list(firsts xs)) + (sum_list(seconds xs))

fun silly1(z:int)=
    let
        val x = if z > 0 then z else 34
        val y = x + z + 9
    in
        if x > y then x * 2 else y * y
    end

fun silly2 () = 
    let
        val x = 1
    in
        (let val x = 2 in x+1 end ) + (let val y = x+2 in y+1 end)
    end