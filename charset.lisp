(in-package :srfi-14-internal)

(macrolet ((def (&rest syms)
               `(progn
                  ,@(mapcar (lambda (x)
                              `(defconstant ,(intern (string x) :char-set)
                                 ,(intern (format nil "CHAR-SET..~A" x))))
                            syms))))
  (def :lower-case  :upper-case  :title-case
       :letter      :digit       :letter+digit
       :graphic     :printing    :whitespace
       :iso-control :punctuation :symbol
       :hex-digit   :blank       :ascii
       :empty       :full))
