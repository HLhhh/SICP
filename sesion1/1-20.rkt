#lang sicp
(define (gcd a b)
  (if (= 0 b)
      a
      (gcd b (remainder a b))))
#|
正则式
(gcd 206 40)
(gcd (gcd 40 (remainder 206 40)))
(gcd (gcd (remainder 206 40) remainder((remainder 206 40) 40)))
...
|#


#|
应用式
(gcd 206 40)
(gcd 40 6)
(gcd 6 4)
(gcd 4 2)
(gcd 0 2)
2
|#