;;;;Exercise 1.12 in ch01.02
(define (pascnum n)
    (if (or (= n (accum (row n))) 
            (= n (+ 1 (accum (- (row n) 1)))))
        1
        (+ (pascnum (- n (row n))) 
           (pascnum (+ 1 (- n (row n)))))))

(define (row n)
    (define (which—row counter n)
        (if (and (< (accum counter) n) 
                 (< n (accum (+ counter 1))))
            counter
            (which—row (+ counter 1) n)))
    (which—row 1 n))

(define (accum n)
    (if (= n 1)
        1
        (+ n (accum (- n 1)))))

