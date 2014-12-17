; Find the sum of all the multiples of 3 or 5 below 1000.

(defn f [n]
    (reduce
        +
        (map
            (fn [i] (* i (or (not (% i 3)) (not (% i 5)))))
            (range n))))

(print (f 1000))
