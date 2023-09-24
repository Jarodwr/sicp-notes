#lang racket
; 5
486
; 6
(+ 137 349)

(- 1000 334)

(* 5 99)

(/ 10 2)

(+ 2.7 10)

; Prefix notation applies the operator (first arg) to the rest of the args

(+ 21 35 12 7)

(* 25 4 12)

; Nesting
(+ (* 3 5) (- 10 6))
; 7

; Deeper nesting
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

; Deeper nesting in a more organized way
(+
 (* 3
    (+ (* 2 4)
       (+ 3 5)))
 (+ (- 10 7)
    6))
