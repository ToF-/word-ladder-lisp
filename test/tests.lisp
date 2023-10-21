(ql:quickload "fiveam")
(in-package :fiveam)
(def-suite* tictactoe-status)

(load "./src/word-ladder.lisp")

(test word-graph-can-find-adjacent-words
      (let ((wg (word-graph '(bag bog cat cog cot dog dot fat fog))))
        (is (eql '(cog bog fog)
                 (adjacent-words 'dog wg)))))


(run!)
