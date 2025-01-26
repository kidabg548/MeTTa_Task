 ; Function to check if a number is even
(= (is-even $x)
    (== (% $x 2) 0)
)

 ; Recursive function to calculate the sum of even Fibonacci numbers
(= (fibonacci-sum-even $limit $a $b $sum)
    (if (>= $b $limit)
        $sum
        (fibonacci-sum-even $limit $b (+ $a $b)
            (if (is-even $b)
                (+ $sum $b)
                $sum
            )
    )
)
)

 ; Main function to initiate the calculation with the first two fibonacci numbers and sum
(= (sum-even-fibonacci $limit)
    (fibonacci-sum-even $limit 1 2 0)
)

! (sum-even-fibonacci 13)
