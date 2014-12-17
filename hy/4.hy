;Find the largest palindrome made from the product of two 3-digit numbers.

(import math operator itertools)

(defn palindrome? [n]
    (setv l (.__str__ n))
    (all (zipwith operator.eq l (reversed l))))

(defn f [n]
    (max (list-comp
        x
        [x
            (map
                (fn [x] (reduce * x))
                (itertools.combinations_with_replacement (range n) 2))]
        (palindrome? x))))

(print (f 999))
