#lang sicp
; (a
(define (product-a a term next b)
  (if (> a b)
      1
      (*
       (term a)
       (product-a (next a) term next b)
      )
  )
)

; (b
(define (product-b a term next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a))))
    )
  (iter a 1)
)

; a 从 0
; b 从 1
(define (term a)
  (define (m a) (+ (* (+ (modm a) 1) 2) 1))
  (define (d a) (+ (* (modd (+ a 1)) 2)))
  (/ (d a) (m a))
  )
; next
(define (inc x) (+ 1 x))
(define (modd  x)
  (+ 1 (modm x)))
(define (modm x)
  (if (even? x) (/ x 2.0)
      (modm (- x 1))))