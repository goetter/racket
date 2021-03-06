#lang web-server
(define interface-version 'stateless)
(provide start interface-version)

(define (gn which)
  (cadr
   (call-with-serializable-current-continuation
    (lambda (k)
      (let ([ignore (printf "Please send the ~a number.\n" which)])
        k)))))

(define (start initial)
  (gn "first"))
