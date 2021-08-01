#lang sicp
(define (sqrt-iter guess x)(if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))
(define (improve guess x) (averrage guess (/ x guess))) (define (averrage x y) (/ (+ x y) 2))
(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.0001))
(define (square x) (* x x))
(define (abs x) (if (> x 0)  x (- x)))
(define (sqrt x) (sqrt-iter 1.00 x))

#| 使用cond创建一个新的if |#
(define (new-if ? p1 p2)
  (cond (? p1)
  (else p2)))
#| 重写了求平方根的程序 |#
(define (sqrt-iter-2 guess x)( (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))
