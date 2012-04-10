; Find the largest palindrome made from the product of two 3-digit numbers.
(define (p? a b)
    (cond ((= a b)
        #t)
        ((<= b 0)
        #f)
        (else
            (p? (+ (* a 10) (remainder b 10)) (floor (/ b 10))))))

    
