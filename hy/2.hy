; By considering the terms in the Fibonacci sequence whose values do not exceed
; four million, find the sum of the even-valued terms.

(defn fib [n]
    (setv a 0)
    (setv b 1)
    (while (< a n)
        (yield a)
        (setv (, a b) (, b (+ a b)))))

(defn f [n]
    (reduce
        +
        (list-comp x [x (fib n)] (not (% x 2)))))

(print (f 4000000))
