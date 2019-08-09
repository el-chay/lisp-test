(with-open-file (my-stream "data.txt" :direction :output)
  (print "hola mundo" my-stream))

(with-open-file (my-stream "data.txt" :direction :input)
  (read my-stream))

(coerce "hola mundo" 'list)

(input-stream-p *standard-input*)

(defun replace-first (&optional (a 'rose) (l '(tulip daisy iris)))
  (cons a (cdr l)))

(defun pal (&optional (l '(lion tiger pather)))
  "(pal '(lion tiger pather)) returns (lion tiger pather pather tiger lion)"
  (append l (reverse l)))

(defun last-for-first (&optional (l '(bass tenor alto soprano)))
  "(last-for-first '(bass tenor alto soprano)) returns (soprano tenor alto soprano)"
  (cons (car (reverse l))
        (cdr l)))

(defun two-elems (l a)
  "(two-elems '(basket bag pack) 'box) returns (basket box)"
  (list (car l) a))

(defun no-firsts (l1 l2)
  "(no-firsts '(abc def ghi) '(jkl mno pqr)) returns (def ghi mno pqr)"
  (append (cdr l1)
          (cdr l2)))

(defun seconds (l)
  "(seconds '(eye ear nose throat)) returns (ear ear)"
  (list (car (cdr l))
        (car (cdr l))))

(defun ftoc (f)
  "(ftoc 212) returns 100"
  (* (- f 32)
     (/ 5 9)))

(defun ftoc (f)
  "My version"
 (* (- f 32) 5/9))

(defun circle (r)
  "(circle 10) returns 314"
  (* 3.14 r r))

(defun mean3 (l)
  "(mean3 '(6 12 9 20)) returns 9"
  (/ (+ (car l)
        (car (cdr l)) 
        (car (cdr (cdr l))))
     3))

;;;; let

(defun powers (a b)
  "(powers 3 6) returns (81 3)"
  (let ((s (+ a b)))
    (list (* s s)
          (sqrt s))))

(defun right-triangle (h s)
  "(right-triangle 17 8) returns (40 60)"
  (let ((os (sqrt (- (* h h)
                     (* s s)))))
    (list (+ h s os)
          (/ (* s os) 2))))

(defun compare (x y)
  "(compare 5 5) returns t"
  (> (+ 10 x)
     (* 2 y)))

(defun palp (l)
  "(palp '(a b c c b a)) returns T
   (palp '(dog cat))     returns nil"
  (equal l (reverse l)))
