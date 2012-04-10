; Find the largest palindrome made from the product of two 3-digit numbers.
(define (p? a b)
    (cond
        ((and (= a 0) (= 0 (remainder b 10))) #f)
        ((<= b 0) #f)
        ((= a b) #t)
        (else (p? (+ (* a 10) (remainder b 10)) (floor (/ b 10))))))
(define (f m n)
    (cond ((< m 100) 0)
        ((< n 100) (f (- m 1) 999))
        (else
            (if (p? 0 (* m n))
                (max (* m n) (f m (- n 1)))
                (f m (- n 1))))))
(define (solve)
    (f 999 999))
