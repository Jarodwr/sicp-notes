#lang racket

; 29
; Create a square root function
(define (new-if predicate then-clause else-clause)
            (cond (predicate then-clause)
        (else else-clause)))
                     
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (homebrew-sqrt x) (sqrt-iter 1.0 x))

(homebrew-sqrt 9)
(homebrew-sqrt (+ 100 37))
(homebrew-sqrt (+ (homebrew-sqrt 2) (homebrew-sqrt 3)))
(* (homebrew-sqrt 1000) (homebrew-sqrt 1000))