; Find the sum of all the primes below two million

(defn pfac [n]
    ; Sieve of Eratosthenes
    (setv m (set))
    (for [i (range 2 (+ n 1))]
        (if (not (in i m))
            (do
                (yield i)
                (.update m (range (* i i) (+ n 1) i))))))

(print (reduce + (pfac 2000000)))
