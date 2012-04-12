; Calculate the sum of all the primes below two million.
(define (p n d)
    (cond ((> (square d) n) n)
          ((= (remainder n d) 0) d)
          (else (p n (+ d 1)))))
(define (prime? n)
    (if (<= n 1) #f
        (= n (p n 2))))
(define (f n s)
    (if (= n 0)
        s
        (if (prime? n)
            (f (- n 1) (+ n s))
            (f (- n 1) s))))
(define (solve)
    (f 2000000 0))
