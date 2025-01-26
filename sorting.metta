 ; insert element into a sorted list
(= (insert $x ()) (:: $x ())) ; base case: insert into empty list
(= (insert $x (:: $y $ys)) ; recursive case: insert into a non-empty list
    (if (<= $x $y) ; if x <= y
        (:: $x (:: $y $ys)) ; insert x before y
        (:: $y (insert $x $ys)) ; else insert x into the rest of the list
    )
)

 ; sort a list using insertion sort
(= (sort ()) ()) ; base case: empty list is already sorted
(= (sort (:: $x $xs)) ; recursive case: sort a non-empty list
    (insert $x (sort $xs)) ; sort the rest of the list and insert x
)

 ; Example usage
! (sort (:: 34 (:: 84 (:: 843 (:: 900 (:: 45 (:: 0 (:: 102 ())))))))) ; sort a list of numbers