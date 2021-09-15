#lang sicp
(define (accumulate combiner null-value term a next b)
   (if (> a b)
       null-value
       (combiner (term a) (accumulate combiner null-value term (next a) next b))
       )
  )
(define (term a) a)
(define (inc a) (+ a 1))
(define (combiner a b)
  (+ a b))