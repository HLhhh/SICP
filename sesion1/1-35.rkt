#lang sicp

(define (fixed-point f f-guess)
  (define (y? a b) (< (abs(- a b)) 0.00001))
  (define (iter guess)
    (let ((next (f guess)))
    (if (y? guess next)
        guess
        (iter next))
      )
    )
  (iter f-guess)
)