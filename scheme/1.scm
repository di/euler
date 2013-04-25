; Add all the natural numbers below one thousand that are multiples of 3 or 5.
(define (f i) 
    (cond 
        ((<= 1000 i)
            0)
        ((= 0 (remainder i 3))
            (+ i (f (+ i 1))))
        ((= 0 (remainder i 5))
            (+ i (f (+ i 1))))
        (else 
            (f (+ i 1)))
    )
)
(define (solve)
    (f 0))
