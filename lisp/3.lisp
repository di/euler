; Find the largest prime factor of a composite number.
(defun prime? (i n)
    (cond ((> i (sqrt n))
            T)
          ((= 0 (mod n i))
            NIL)
          (T
            (prime? (+ i 1) n))))
(defun pfac (i o)
    (if (= 0 (mod o i))
        (if (prime? 2 i)
            i
            (pfac (- i 1) o))
        (pfac (- i 1) o)))
(defun solve ()
    (pfac (floor (sqrt 600851475143)) 600851475143))
