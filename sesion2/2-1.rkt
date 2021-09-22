#lang sicp
(define (mrk a b)
   (define (f x) (- 0 x))
   (if (> 0 b)
       (cons (f a) (f b))
       (cons a b)))
(define (numer mrk) (car mrk))
(define (denom mrk) (cdr mrk))