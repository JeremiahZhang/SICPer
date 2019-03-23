;;;;ex1.17 multipy

(define (multipy a b)
    (cond ((= b 0) 0)
          ((even? b) (multipy (double a) (/ b 2)))
          (else (+ a (multipy a (- b 1))))))

(define (even? n)
    (= (remainder n 2) 0))

(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))
