; http://projecteuler.net/problem=16
(define (f n)
    (if (= 0 n) 0
        (+ (remainder n 10) (f (/ (- n (remainder n 10)) 10)))))
(define (solve)
    (f (expt 2 1000)))
