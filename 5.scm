(define (?f n i)
    (cond
        ((= 0 i) #t)
        ((= 0 (remainder n i)) (?f n (- i 1)))
        (else #f)))
(define (f n i)
    (if 
        (?f n i) n
        (f (+ i n) i)))
(define (solve)
    (f 20 20))
