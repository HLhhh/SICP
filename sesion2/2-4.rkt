(define (cons x y)
    (lambda (m) (m x y))
)
(define (car z)
    (z (lambda (p q) p))
)
;代换模型
(car z)
(car (cons x y))
(car (lambda (m) (m x y)))
((lambda (m) (m x y)) (lambda (p q) p))
((x y) (lambda (p q) p))
(lambda (x y) x)
(x)

;cdr
(define (cdr z)
    (z (lambda (p q) q))
)