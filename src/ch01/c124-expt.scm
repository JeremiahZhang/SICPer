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
