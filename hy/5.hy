; What is the smallest number divisible by each of the numbers 1 to 20?

(import math)

(defn pfac [n]
    ; Sieve of Eratosthenes
    (setv m (set))
    (for [i (range 2 (+ n 1))]
        (if (not (in i m))
            (do
                (yield i)
                (.update m (range (* i i) (+ n 1) i))))))

(defn f [n]
    (reduce
        *
        (map
            (fn [x] (** x (int (math.floor (** n (/ 1 x))))))
            (pfac n))))

(print (f 20))
