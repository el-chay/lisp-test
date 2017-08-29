#!/usr/bin/clisp
(defun hm ()
    (format t "Hola Mundo!"))

(defun fibo (term)
    (loop for i below term
        and a = 0 then b
        and b = 1 then (+ b a)
        finally (return a)))

(defvar *db* nil)

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*))

(defun dump-db ()
  (format t "~{~{~a:~10t~a~%~}~%~}" *db*))

(defun prompt-read (prompt)
    (format *query-io* "~a: " prompt)
    (force-output *query-io*)
    (read-line *query-io*))

(defun prompt-for-cd ()
    (make-cd
        (prompt-read "Title")
        (prompt-read "Artist")
        (or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)
        (y-or-n-p "Ripped [y/n]: ")))

(defun add-cds ()
    (loop (add-record (prompt-for-cd))
        (if (not (y-or-n-p "Another? [y/n]: ")) (return))))

;(add-record (make-cd "Hola Mundo!" "Antonio Chay" 69 t))
;(add-record (make-cd "Chao Mundo!" "Antonio Chay" 68 t))
;(add-record (make-cd "Pitbull Revolutions" "Diablo Swing Orchestra" 1 t))

