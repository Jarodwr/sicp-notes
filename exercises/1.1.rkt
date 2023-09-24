#lang racket

; 1.1
10 ;10
(+ 5 3 4) ;12
(- 9 1) ;8
(/ 6 2) ;3
(+ (* 2 4) (- 4 6)) ;6
(define a 3) ;a = 3
(define b (+ a 1)) ;b = 4
(+ a b (* a b)) ;19
(= a b) ;false
(if (and (> b a) (< b (* a b)))
    b
    a) ;4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ;16

(+ 2 (if (> b a) b a)) ;6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ;16

;  1.2

(/ 
  (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
  (* (- 6 2) (- 2 7)))

; 1.3
(define (square-sum-of-two-largest a b c) 
  (cond ((and (< a b) (< a c)) (* b b c c))
        ((and (< b a) (< b c)) (* a a c c))
        ((and (< c b) (< c a)) (* b b a a))))

(square-sum-of-two-largest 6 7 8)

; 1.4
; use the value of b to determine whether we are using the add or subtract operator to combine a and b

; 1.5
; Under applicative order since (p) will expand to itself it creates an infinite loop
; Under normal order as the predicate resolves to false, we will never need to expand the (p) expression

; 1.6
; If it expands under applicative order it will expand itself infinitely?
; correct! if is a special form that short circuits the evaluation

; 1.7
; 

; TBC: got up to page 61