;;;;ex1.16 exponention

(define (expt-exe b n)
    (anoexpt b n 1))

(define (anoexpt b n a)
    (cond ((= n 0) a)
          ((even? n) (anoexpt (square b) (/ n 2) a))
          (else (anoexpt b (- n 1) (* a b))))
    )

(define (even? n)
    (= (remainder n 2) 0))
