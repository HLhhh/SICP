#lang sicp
#|线性递归版本 Linear recursion|#
(define (f n)
  (if (or (< n 3) (= n 3))
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))
      ))

#|线性迭代版本 Linear iteration|#
(define (fe n)
  (define (f-iter a b c count)
     (if (= n count)
         (exf a b c)
         (f-iter (exf a b c) a b (+ count 1))))
  (define (exf a b c)
     (+ (* a 1) (* b 2) (* c 3)))
     (if (< n 4)
      n
     (f-iter 3 2 1 4))
)