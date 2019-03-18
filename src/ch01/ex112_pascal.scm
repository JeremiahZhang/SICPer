;;;;Exercise 1.12 in ch01.02

(define (pascal n)
    (if (or (= n (accumulator (which—row? 1 n))) 
        (= n (+ 1 (accumulator (- (which—row? 1 n) 1)))))
        1
        (+ (pascal (- n (which—row? 1 n))) 
            (pascal (+ 1 (- n (which—row? 1 n)))))))


(define (which—row? counter a)
    (if (and (< (accumulator counter) a) 
        (< a (accumulator (+ counter 1))))
        counter
        (which—row? (+ counter 1) a)))

(define (accumulator n)
    (if (= n 1)
        1
        (+ n (accumulator (- n 1)))))

