;;;; Doppler Frequency Shift

(define (doppler-fre-shift v w); v: m/s
    (* (/ (* 2 v) w) 1000000000)); w: nm
