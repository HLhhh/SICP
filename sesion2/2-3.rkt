#lang sicp
; 段落
(define (make-segment x y)
  (cons x y))
(define (start-segment x)
  (car x))
(define (end-segment x)
  (cdr x))

; point 点
(define (make-point x y)
  (cons x y))
(define (x-point x)
  (car x))
(define (y-point x)
  (cdr x))

; 矩形
(define (rectangle x1 x2 y1 y2 a1 a2 b1 b2)
  (define (rectangle-point p1 p2 p3 p4)
    (cons (cons p1 p2) (cons p3 p4)))
  (rectangle-point (make-point x1 x2)
                   (make-point y1 y2)
                   (make-point a1 a2)
                   (make-point b1 b2)))

(define (perimeter r)
  (+ (left1 r) (left2 r) (top r) (down r))
 )

