;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-14
  (:use)
  (:export))

(defpackage :srfi-14.char-set
  (:use)
  (:export
   :lower-case  :upper-case  :title-case
   :letter      :digit       :letter+digit
   :graphic     :printing    :whitespace
   :iso-control :punctuation :symbol
   :hex-digit   :blank       :ascii
   :empty       :full)
  (:nicknames :char-set) )

(defpackage :srfi-14-internal
  (:use :srfi-14 :cl :fiveam :srfi-9 :srfi-23 :srfi-5)
  (:shadowing-import-from :srfi-23 :error)
  (:shadowing-import-from :srfi-5 :let)
  (:shadow :lambda :loop :make-string))
