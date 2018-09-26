;;;; sqrt-iter in c1.1.7 ex1.7 upd

(define (sqrt-iter guess x)
    (if (good-enough? (improve guess x) guess)
        (improve guess x)
        (sqrt-iter (improve guess x) 
            x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? new-guess old-guess)
    (< (/ (abs (- old-guess new-guess)) old-guess) 
        0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))
