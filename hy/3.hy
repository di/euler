; What is the largest prime factor of the number 600851475143?

(import math)

(defn prime? [n &optional [i 2]]
    (cond
        [(> i (math.sqrt n))
            true]
        [(not (% n i))
            false]
        [true
            (prime? n (+ i 1))]))

(defn poly [n]
    (setv i (int (math.floor (math.sqrt n))))
    (while (> i 2)
        (if (and (not (% n i)) (prime? i))
            (break))
        (setv i (- i 1)))
    i
)

(print (poly 600851475143))
