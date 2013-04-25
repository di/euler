; Find the largest prime factor of a composite number.
(define (prime? i n)
    (cond ((> i (sqrt n))
            #t)
          ((= 0 (remainder n i))
            #f)
          (else
            (prime? (+ i 1) n))))
(define (pfac i o)
    (if (= 0 (remainder o i))
        (if (prime? 2 i)
            i
            (pfac (- i 1) o))
        (pfac (- i 1) o)))
(define (solve)
    (pfac (floor (sqrt 600851475143)) 600851475143))
