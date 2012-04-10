; By considering the terms in the Fibonacci sequence whose values do not exceed
; four million, find the sum of the even-valued terms.
(define (f i j) 
    (cond 
        ((< 4000000 j)
            0)
        ((= 0 (remainder j 2))
            (+ j (f j (+ i j))))
        (else 
            (f j (+ i j)))
    )
)
(define (solve)
    (f 1 2))
