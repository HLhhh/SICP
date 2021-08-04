#lang sicp
(define (derive x y) (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (cube-iter guess x)(if (good-enough? guess x) guess (cube-iter (derive x guess) x)))
(define (cube x) (cube-iter 1.00 x))
(define (ratio x y) (if (< x y) (/ x y) (/ y x)))
(define (cubic x) (* x x x))
(define (good-enough? guess x) (> (ratio (cubic guess) x) 0.9999999999999))
