; Find the difference between the sum of the squares of the first one hundred
; natural numbers and the square of the sum.

(defn a [n]
    (if (= n 0)
        0
        (+ n (a (- n 1)))))

(defn b [n]
    (if (= n 0)
        0
        (+ (** n 2) (b (- n 1)))))

(defn f [n]
    (- (** (a n) 2) (b n)))

(print (f 100))
