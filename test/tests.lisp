(ql:quickload "fiveam")
(in-package :fiveam)
(def-suite* word-ladder)

(load "./src/word-ladder.lisp")

(defparameter *wg* (dictionary '("bag" "bog" "cat" "cog" "cot" "dog" "dot" "fat" "fog")))

(test dictionary-can-find-adjacent-words
      (is (equalp '("bog" "cog" "dot" "fog")
                 (adjacent-words "dog" *wg*)))
      (is (equalp nil
                 (adjacent-words "zoo" *wg*))))


(test strings-are-adjacent-if-different-by-1-letter
      (is (adjacentp "bog" "cog"))
      (is (equalp nil (adjacentp "bog" "bog")))
      )

(run!)
