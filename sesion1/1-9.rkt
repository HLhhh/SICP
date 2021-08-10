#lang sicp
(define (jia1 a b)
  (if (= a 0)
      b
      (inc (jia1 (dec a) b)))
  )
(define (jia2 a b)
  (if (= a 0)
      b
      (jia2 (inc a) (dec b)))
  )

#| 将其inc和dec 用代换模型替换后得出 (jia 4 5)|#
(jia1 4 5)
(if (= 4 0) 5 (inc (jia1 (3 5))))
(inc (jia1 (3 5)))
(inc ((if (= 3 0)) 5 (inc ((jia1 2 5)))))
(inc (inc ((jia1 2 5))))
(inc (inc (inc (jia1 1 5))))
(inc (inc (inc (inc(jia1 0 5)))))
(inc (inc (inc (inc(5)))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9
#| 可见它是一个线性递归模型 |#


(jia2 4 5)
(if (= 4 0) 5 (jia2 3 6))
(if (= 3 0) 6 (jia2 2 7))
(if (= 2 0) 7 (jia2 1 8))
(if (= 1 0) 9 (jia2 0 9))
(if (= 0 0) 9)
9
#| 可见它是一个迭代的模型 |#
