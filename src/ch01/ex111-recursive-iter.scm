;;;; Exercise 1.11
(define (fun-recur n)
    (if (< n 3) 
        n
        (+ (fun-recur (- n 1))
           (fun-recur (- n 2))
           (fun-recur (- n 3)))))

(define (fun-iter n)
    (define (f-iter a b c counter n)
        (if (> (+ counter 2) n)
            c
            (f-iter b c (+ a b c) (+ counter 1) n)))
    (f-iter 0 1 2 1 n))

; (define (f-iter a b c counter n)
;     (if (> (+ counter 2) n)
;         c
;         (f-iter b c (+ a b c) (+ counter 1) n)))

; (f-iter 0 1 2 1 6)
