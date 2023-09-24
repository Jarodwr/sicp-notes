#lang racket

; 7
; Name things using define
(define size 2)

; 8
; refer to the value by name
(* 5 size)

; further examples of define
(define pi 3.14159)

(define radius 10)

(* pi (* radius radius))

(define circumference (* 2 pi radius))

circumference

