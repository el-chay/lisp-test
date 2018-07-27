;; Format test: value can be true or false, print accordingly.
(defun fail-ok (value)
  (format nil "~:[FAIL~;pass~]" value))

;; Keywords: After the "&key" "keyword" one can set named keywords for one's
;; function with default values if needed.
(defun keywords (&key no-value (value "hola"))
  (format nil ":no-value = ~A~%:value = ~A" no-value value))

;; Optional parameters: After the "&optional" keyword one can setup optional
;; parameters for one's function.
(defun optional (&optional opt1 (opt2 'default))
  (format nil "opt1 = ~a~%opt2 = ~a" opt1 opt2))

;; Rest parameters: After the &rest keyword one can prepare the function to
;; handle any number of parameters
(defun resto (&rest list)
  (format nil "~{~(~a~)~^, ~}" list))

;; Fun with print
;; Do not print the comma at the end of the list
(defun print-list (value)
  (format nil "~{~(~a~)~^, ~}" value))


;; AutoLoad :-D
;; check the comments ;-)
#|
(load "functions.lisp")
|#

;; AutoCompile :-D
(compile-file "functions.lisp")

;; Global Variables

;; Do not use setf for variable definitions! (wrong usage).
;; In this context is a global variable.
(setf a "hola")

;; Right way to define a global variable.
(defparameter b "mundo"
"This is a global variable")

;; Constant
(defconstant *pi-phi-1* (1+ (* (/ (1+ (sqrt 5)) 2) pi))
"Guido's constant")

;; Sequence functions can be "destructive":
(let ((l '(a b c d)))
  (princ (remove-if #'symbolp l)) ;; should print NIL
  (princ l) ;; should print l
  (princ (delete-if #'symbolp l)) ;; Destructive form
  (princ l)) ;; should print NIL
