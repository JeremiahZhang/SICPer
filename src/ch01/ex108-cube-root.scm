;;;; exercise 1.8 solution
(define (cube-iter guess x)
    (if (good-enough? guess (improve-guess guess x))
        (improve-guess guess x)
        (cube-iter (improve-guess guess x) x)))

(define (good-enough? old-guess new-guess)
    (> 0.001 (/ (abs (- new-guess old-guess)) old-guess)))

(define (improve-guess guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root x)
    (cube-iter 1.0 x))
