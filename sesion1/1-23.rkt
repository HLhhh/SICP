#lang sicp
#|暴力获取素数的表达式|#
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test)
  (cond ((> (suqare test) n) n)
        ((divides? test n) test)
        (else (find-divisor n (+ 1 test)))
    ))
(define (divides? a b)
  (= (remainder b a) 0))
(define (suqare a)
  (* a a))
(define (prime? n)
  (= n (smallest-divisor n)))


#|时间戳版本|#
(define (search-for-primes n)
  (start-prime-test n (runtime)))
  (define (start-prime-test n start-time)
     (if (prime? n)
         (report-prime (- (runtime) start-time) n)
         (start-prime-test (+ n 1) start-time))
    )
  (define (report-prime time n)
    (newline)
    (display n)
    (display "***")
    (newline)
    (display time))

#|search-for-primes 是以指数上升的复杂度|#