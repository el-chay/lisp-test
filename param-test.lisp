#!/usr/bin/clisp
; Command line parameters test
; args is a list containing the command line parameters.
; This is a GNU Common Lisp Extension

(fresh-line)
; princ will print "human friendly" and a LF.
(princ ext:*args*)

(fresh-line)
; print will print "lisp friendly" and an extra space.
(print ext:*args*)

(fresh-line)
; format utility
(format t "~{~a~^, ~}" ext:*args*)

(fresh-line)
; argv function
(format t "~{~a~^, ~}" (ext:argv))
