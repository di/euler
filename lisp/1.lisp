; Add all the natural numbers below one thousand that are multiples of 3 or 5.
(defun f (i) 
    (cond 
        ((<= 1000 i)
            0)
        ((= 0 (mod i 3))
            (+ i (f (+ i 1))))
        ((= 0 (mod i 5))
            (+ i (f (+ i 1))))
        (T
            (f (+ i 1)))
    )
)
(defun solve ()
    (f 0))
