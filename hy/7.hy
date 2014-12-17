; What is the 10001st prime number?

(import math)

(defn prime? [n &optional [i 2]]
    (cond
        [(> i (math.sqrt n))
            true]
        [(not (% n i))
            false]
        [true
            (prime? n (+ i 1))]))

(defn f [n]
    (setv p 2)
    (setv i 1)
    (while (< i n)
        (setv p (+ p 1))
        (if (prime? p)
            (setv i (+ i 1))))
    p)

(print (f 10001))
