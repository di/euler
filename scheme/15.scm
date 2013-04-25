; http://projecteuler.net/problem=15
(define (f n) ;factorial
    (if (= n 0) 1
        (* n (f (- n 1)))))
(define (c a b) ;choose
    (/ (f a) (* (f b) (f (- a b)))))
(define (s n i)
    (if (> i n) 0
        (+ (* (c n i) (c n (- n i))) (s n (+ i 1))))) 
(define (solve)
    (s 20 0))
