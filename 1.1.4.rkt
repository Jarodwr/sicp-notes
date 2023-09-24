#lang racket

; 12
; Procedure definition
; Form of a procedure definition: (define ((name) (formal parameters)) (body))
(define (square x) (* x x))

; lets use that procedure
(square 21)

(square (+ 2 5))

(square (square 3))

; we can use the procedure to design other procedures
(define
  (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 12 3)

; can go even further and use sum-of-squares to build further procedures!

(define (f a) (sum-of-squares (+ a 1) (* a 2)))

(f 5)