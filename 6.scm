; What is the difference between the sum of the squares and the square of the
; sums?
(define (a n)
    (if (= n 0) 
        0
        (+ n (a (- n 1)))))
(define (b n)
    (if (= n 0)
        0
        (+ (expt n 2) (b (- n 1)))))
(define (solve)
    (- (expt (a 100) 2) (b 100)))
