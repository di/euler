; Find the 10001st prime.
(define (prime? i n)
    (cond ((> i (sqrt n))
            #t)
          ((= 0 (remainder n i))
            #f)
          (else
            (prime? (+ i 1) n))))
(define (f i n m)
    (if (prime? 2 n)
        (if (= m i)
            n
            (f (+ 1 i) (+ 1 n) m))
        (f i (+ 1 n) m )))
(define (solve)
    (f 0 1 10001))
