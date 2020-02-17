(cl:in-package "https://github.com/g000001/srfi-14#internals")


(def-suite* srfi-14)


(test char-set
  (is-true (char-set= char-set$full char-set$full))
  (is-true (char-set<=  char-set$letter char-set$letter+digit))
  (is-true (= (char-set-hash char-set$full) (char-set-hash char-set$full))))


;;; *EOF*
