(defun word-graph (words)
  (let ((wg (make-hash-table)))
    (progn (setf (gethash 'dog wg) 
                 (sort '(cog bog fog) #'string<= ))
           wg)))

(defun adjacent-words (word graph)
  (nth-value 0 (gethash word graph)))
