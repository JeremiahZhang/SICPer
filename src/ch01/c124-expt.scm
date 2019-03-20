;;;;example 1.2.4 exponentiation

; step: theta(n)
; space: theta(n)
(define (exponet b n)
    (if (= n 0)
        1
        (* b (exponet b (- n 1)))))

; step: theta(n)
; space: theta(1)

(define (exptTwo b n)
    (exptIter b n 1))

(define (exptIter b counter product)
    (if (= counter 0)
        product
        (exptIter b (- counter 1)
                (* b product))))

; b^2 = b * b
; b^4 = b**2 * b**2
; b^8 = b^4 * b^4
; b^n = (b^(n/2))^2; if n is even
; b^n = b * b^(n-1); if n is odd
(define (fast-expt b n)
    (cond ((= n 1) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
          (else (* b (fast-expt b (- n 1))))))

(define (even? n)
    (= (remainder n 2) 0))
