; Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.
(define (f a b c n)
    (if (<= c 0)
        0
        (if (>= b c)
            (f (+ a 1) (+ a 2) (- n (+ (+ a 1) (+ a 2))) n)
            (if (= (+ (* a a) (* b b)) (* c c))
                (reduce * 1 (list a b c))
                (f a (+ b 1) (- c 1) n)))))
(define (s n)
    (f 1 2 (- n 3) n))
(define (solve)
    (s 1000))
