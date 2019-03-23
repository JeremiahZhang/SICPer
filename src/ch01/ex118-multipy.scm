;;;;ex1.18 
; Procedure that generates an iterative process
; for multiplying two integers in
; terms of adding, doubling, and halving and
; use a logarithmic number of steps.

(define (multiply a b)
    (multi-iter a b 0))

(define (multi-iter a b product)
    (cond ((= b 0) product)
          ((even? b) (multi-iter (double a) 
                                  (/ b 2) product))
          (else (multi-iter a (- b 1) (+ a product)))))

(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(define (even? n)
    (= (remainder n 2) 0))
