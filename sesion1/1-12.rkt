#lang sicp
#|线性递归|#
(define (psk x y)
  (cond ((= 1 y) 1)
        ((= y x) 1)
        (else (+ (psk (- x 1) y) (psk (- x 1) (- y 1))))
        ))
#|线性迭代实现不了：因为杨辉三角每一行的列数不一样，那就表明要处理的参数不一样|#
