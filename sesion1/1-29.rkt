#lang sicp
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

#|定积分|#
(define (integral f a b dx)
  (define (next a) (+ a dx))
  (* (sum f (+ a (/ dx 2.0)) next b)
     dx))

(define (cube x)
    (* x x x))

#|吉普森定积分|#
(define (gibson f a b n)
  (define h (/ (- b a) n))
  (define (term k)
    (define y (f (+ a (* k h))))
    (cond ((or (= 0 k) (= n k)) y)
          (= 0 (remainder k 2)) (* 2 y)
          (else (* 4 y))))
  (define (inc x) (+ x 1))
  (* (/ h 3.0) (sum term 0 inc n))
)
