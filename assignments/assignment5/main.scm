(define curry3
  (lambda (func)
    (lambda (arg1)
      (lambda (arg2)
        (lambda (arg3)
          (func arg1 arg2 arg3))))))

(define uncurry3
  (lambda (func)
    (lambda (arg1 arg2 arg3)
      (((func arg1) arg2) arg3))))

(define uncurry
  (lambda (func)
    (lambda args
      (if (not (procedure? (func (car args))))
          (func (car args))
          (apply (uncurry (func (car args))) (cdr args))))))





(define curry-plus
    (lambda ()
        (lambda (x)
            (lambda (y)
                (+ x y)))))

(define curry-plus-four
    (lambda ()
        (lambda (x)
            (lambda (y)
              (lambda (z)
                  (lambda (w)
                    (+ x y z w)))))))

(define my-filter
  (lambda (proc lst)
    (cond ((null? lst) '())
          ((proc (car lst))
            (cons (car lst) (my-filter proc (cdr lst))))
            (else (my-filter proc (cdr lst))))))

(define not-contains?
  (lambda (list)
    (lambda (value)
      (cond ((null? list) #t)
            ((eq? (car list) value) #f)
            (else ((not-contains? (cdr list)) value))))))



(define union
  (lambda (S1 S2)
    (cond ((null? S1) S2)
          ((null? S2) S1)
          (else (append (my-filter (not-contains? S1) S2) S1)))))

;(union '(1 2 3) '(4 5 6 7))
(define S1 '(1 2 3))
(define S2 '(4 5 6 7))
(append (my-filter (not-contains? S1) S2) S1)
















;hi
