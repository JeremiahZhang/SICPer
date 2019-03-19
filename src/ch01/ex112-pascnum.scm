;;;;Exercise 1.12 in ch01.02

(define (pascal n)
    (define (pascnum counter n)
        (if (or (= n (accum (row counter n))) 
                (= n (+ 1 (accum (- (row counter n) 1)))))
            1
            (+ (pascnum counter (- n (row counter n))) 
               (pascnum counter (+ 1 (- n (row counter n)))))))
    (pascnum 1 n))

(define (row counter n)
    (cond ((= counter n)
            1)
          ((and (< (accum counter) n) 
                (or (< n (accum (+ counter 1))) 
                    (= n (accum (+ counter 1)))))
            (+ counter 1))
          (else (row (+ counter 1) n))))

(define (accum n)
    (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ n (accum (- n 1))))))

