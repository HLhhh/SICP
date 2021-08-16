#lang sicp
(define (fast-expt b n)
  (define (fast-expt-iter n a count)
    (cond ((> count n) a)
          ((even? n) (square (fast-expt-iter n a (inc count))))
          (else (fast-expt-iter n (* b a) (inc count))))
    )
  (if (= n 0)
      1
  (fast-expt-iter n 1 1)))

(define (even? n)
  (= (remainder n 2) 0))
(define (square x)
  (* x x))
(define (inc x)
  (+ x 1))