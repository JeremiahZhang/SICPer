;1.2.5 GCD algorithm 
; the greatest common divisor
; logarithmic growth bears an intersting relation to 
; the Fibonacci numbers

(define (gcd a b)
    (if (= b 0) 
        a
        (gcd b (remainder a b))))
