(defun fib-trec (n)
  (labels ((calc-fib (n a b)
             (print a)
             (if (= n 0)
                 a
                 (calc-fib (- n 1) b (+ a b)))))
    (calc-fib n 0 1)))
