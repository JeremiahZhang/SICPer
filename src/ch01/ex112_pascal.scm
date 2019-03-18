;;;;Exercise 1.12 in ch01.02

(define (pascal n)
    ; checkout which line
    (if (or (= n (accumulator (which—row? 1 n)))
            (= n (+ 1 (accumulator (- (which—row? 1 n) 1)))))
        1
        (+ (pascal (- n (which—row? 1 n)))
           (pascal (+ 1 (- n (which—row? 1 n)))))))

    ; if n = (row-1)_sum+1 or n = (row)_sum 
         ; 1    
         ; else (+ p_(n-a) p_(n-a+1)))

; (define which—row? a
;     if n_sum < a < (n+1)_sum
;     then n)

(define (which—row? counter a)
    (if (and (< (accumulator counter) a) 
             (< a (accumulator (+ counter 1))))
         counter
         (which—row? (+ counter 1) a)))

(define (accumulator n)
    (if (= n 1)
        1
        (+ n (accumulator (- n 1)))))

