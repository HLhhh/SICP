#lang sicp
(define (fb n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fb(- n 2)) (fb(- n 1))))
        ))


(define (fib2 n)
  (define (fib-iter a b n)
    (if (= 0 n)
        a
        (fib-iter b (+ a b) (- n 1))))
  (fib-iter 0 1 n))