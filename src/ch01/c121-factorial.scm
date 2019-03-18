;;;;Factorial Example in ch01.02
(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))

(define fact
    (lambda (n)
        (if (= n 1)
            1
            (* n (fact (- n 1))))))

(define (factorial-two n)
    (define (fact-iter product counter n)
        (if (> counter n)
            product
            (fact-iter (* product counter) 
                       (+ 1 counter) 
                       n)))
    (fact-iter 1 1 n))

(define (fact-sim n)
    (define (iter product counter)
        (if (> counter n)
            product
            (iter (* product counter)
                  (+ counter 1))))
    (iter 1 1))
