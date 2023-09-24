#lang racket
; 22
; Conditional expressions and predicates

; cond notates a case analysis construct
; I think cond acts a bit like switch/case or match?
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

; Alternative definition that functionally does the same thing:
(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))

; Another alternative definition
; (if ⟨predicate⟩ ⟨consequent⟩ ⟨alternative⟩)
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

; 'and' predicate
; requires all expressions to evaluate to false
(and true true false true true) ;false
(and true true true true) ;true

; 'or' predicate
; requires any expressions to evaluate to true
(or false false) ;false
(or false false true) ;true

; 'not' predicate
(not false) ;true

