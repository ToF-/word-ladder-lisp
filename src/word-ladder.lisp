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

(defun word-graph (words)
  (let ((wg (make-hash-table)))
    (progn (setf (gethash 'dog wg) 
                 (sort '(cog bog fog) #'string<= ))
           wg)))

(defun adjacent-words (word graph)
  (nth-value 0 (gethash word graph)))


