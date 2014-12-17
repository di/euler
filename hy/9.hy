; There exists exactly one Pythagorean triplet for which a + b + c = 1000.
; Find the product abc

(import itertools)

(defn check? [a b c]
    (and (and (< a b) (< b c)) (= (+ (** a 2) (** b 2)) (** c 2))))

(defn f [n]
    (for [b (range 1 n)]
        (for [a (range 1 b)]
                (setv c (- n (+ a b)))
                (if (check? a b c)
                    (yield (* a b c))))))

(print (car (list (f 1000))))
