 ; Function to check if a number is a multiple of 3 or 5
(= (is-multiple-of-3-or-5 $x)
     ; The or of whether x is divisible by 3 and whether x is divisible by 5
    (or (== (% $x 3) 0) (== (% $x 5) 0))
)

 ; Recursive function to calculate the sum of multiples below a given number
(= (sum-multiples-below $n $current $sum)
     ; If the current number is less than the limit n
    (if (< $current $n)
         ; Recursive call to sum-multiples-below with next current number
        (sum-multiples-below $n (+ $current 1)
             ; Add the current number to the sum if it is a multiple of 3 or 5
            (if (is-multiple-of-3-or-5 $current)
                (+ $sum $current)
                 ; Otherwise do not change the sum
                $sum
            )
    )
 ; If current number is not less than the limit, return the calculated sum
$sum
)
)

 ; Main function to initiate the calculation with initial sum 0 and current number 0
(= (sum-of-multiples $n)
     ; Call helper function to calculate sum of multiples
    (sum-multiples-below $n 0 0)
)

! (sum-of-multiples 100)
