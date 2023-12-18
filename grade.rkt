;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname grade) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;(check-expect (final-cs135-grade 100 80 60 0) 48)
(define (final-cs135-grade part mid finex ovass)
  (/ (+ (* part 5) (* mid 20) (* finex 45) (* ovass 30)) 100))

;;(check-expect (cs135-final-exam-grade-needed 100 100 100) (/ 100s))
(define (cs135-final-exam-grade-needed part mid ovass)
 (/ (- 60 (+ (* 5 (/ part 100)) (* 20 (/ mid 100)) (* 30 (/ ovass 100)))) 0.45))