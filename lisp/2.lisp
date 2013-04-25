; By considering the terms in the Fibonacci sequence whose values do not exceed
; four million, find the sum of the even-valued terms.
(defun f (i j) 
    (cond 
        ((< 4000000 j)
            0)
        ((= 0 (mod j 2))
            (+ j (f j (+ i j))))
        (T 
            (f j (+ i j)))
    )
)
(defun solve ()
    (f 1 2))
