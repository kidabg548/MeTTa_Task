 ; Applies a binary function to each list element with a constant.
(= (binary-map $f $constant ()) ()) ; Base case: empty list
(= (binary-map $f $constant (:: $x $xs)) ; Recursive case: non-empty list
    (:: ($f $x $constant) (binary-map $f $constant $xs)) ; Apply function and recurse
)

 ; Example binary function: add two numbers
(= (addTwo $x $y) (+ $x $y)) ; Defines a function to add two numbers

 ; Example usage
! (binary-map addTwo 10 (:: 1 (:: 2 (:: 3 ()))))
! (binary-map addTwo 5 (:: 4 (:: 5 (:: 6 ()))))
