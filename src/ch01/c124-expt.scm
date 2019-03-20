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
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
          (else (* b (fast-expt b (- n 1))))))

(define (even? n)
    (= (remainder n 2) 0))

;;;; ex1.16
; Design a procedure that evolves an iterative
; exponentiation process that uses successive 
; squaring and use a logarithmic number of steps,
; as does fast-expt.
; Hint: b^n = (b^(n/2))^2 = (b^2)^(n/2)
; b^1 = b
; b^2 = b*b
; b^3 = (b^2)^(3/2-1)*(b^2)
; b^4 = (b^2)^(4/2)
; n = 1, 3, 5, 7, 9排除
; b^n = (b^2)^(n/2) , if n/2 is even, n为4的倍数
; b^n = (b^2)^(n/2-1)*(b^2), if n/2 is odd, n非4倍的整数

(define (o-expt b n)
    (cond ((= n 0) 1)
          ((= n 1) b)
          ((even? (/ n 2)) 
            (fast-expt (square b) (/ n 2)))
          ((odd? (/n 2))
            (* (square b) (fast-expt (square b)
                (- (/ n 2) 1))))
          (else xxx)
        )

(define (square b) (* b b))

(defien (odd? n)
    (not (= (remainder n 2) 0)))
