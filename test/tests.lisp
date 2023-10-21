(ql:quickload "fiveam")
(in-package :fiveam)
(def-suite* word-ladder)

(load "./src/word-ladder.lisp")

(defparameter *wg* (word-graph '(bag bog cat cog cot dog dot fat fog)))

(test word-graph-can-find-adjacent-words
      (is (equalp '(bog cog fog)
                 (adjacent-words 'dog *wg*)))
      (is (equalp nil
                 (adjacent-words 'zoo *wg*))))


(run!)
