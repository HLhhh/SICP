#lang sicp
#|针对与1.7的思考，我认为要想求两个数是否真正的相近 除法会比减法来的实现 ，同时也能支持大数|#
(define (sqrt-iter guess x)(if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))
(define (improve guess x) (averrage guess (/ x guess))) (define (averrage x y) (/ (+ x y) 2))
(define (good-enough? guess x) (>= (ratio (square guess) x) 0.99))
(define (square x) (* x x))
(define (ratio x y) (if (< x y) (/ x y) (/ y x)))
(define (sqrt x) (sqrt-iter 1.00 x))

#|(sqrt 10000000000000001231230000000000000000000000058222222222222222222222222222222)|#