; What is the value of the first triangle number to have over five hundred divisors?
(define (g n i)
    (if (> i (/ n 2))
        (list n)
        (if (= 0 (remainder n i))
            (cons i (g n (+ 1 i)))
            (g n (+ 1 i)))))
(define (f n i s)
    (if (> (length (g s 1)) n)
        s
        (f n (+ i 1) (+ s (+ i 1)))))
(define (solve) 
    (f 500 1 1))
