(defun adjacentp (a b)
    (if (= (length a) (length b))
      (let ((diff-count 0))
        (dotimes (i (length a) t)
          (unless (equalp (char a i) (char b i))
            (incf diff-count))
          (if (> diff-count 1)
              (return nil)))
        (= diff-count 1))
      nil))

(defun dictionary (words)
  words)

(defun adjacent-words (word graph)
  (sort (remove-if-not (lambda (w) (adjacentp w word)) graph) #'string<= ))



