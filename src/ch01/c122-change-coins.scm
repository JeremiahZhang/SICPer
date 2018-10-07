;;;; Example in 1.2.2 counting change
(define (count-change amount)
    (cc amount 5))

(define (cc amount coin-kinds)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= coin-kinds 0)) 0)
          (else (+ (cc amount 
                        (- coin-kinds 1))
                    (cc (- amount
                           (coin-denomination coin-kinds))
                        coin-kinds)))))

(define (coin-denomination coin-kinds)
    (cond ((= coin-kinds 1) 1)
          ((= coin-kinds 2) 5)
          ((= coin-kinds 3) 10)
          ((= coin-kinds 4) 25)
          ((= coin-kinds 5) 50)))
