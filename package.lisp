;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-14
  (:use)
  (:export
   :char-set? :char-set= :char-set<= :char-set-hash :char-set-cursor
   :char-set-ref :char-set-cursor-next :end-of-char-set? :char-set-fold
   :char-set-unfold :char-set-unfold! :char-set-for-each :char-set-map
   :char-set-copy :char-set :list->char-set :string->char-set :list->char-set!
   :string->char-set! :char-set-filter :ucs-range->char-set :char-set-filter!
   :ucs-range->char-set! :->char-set :char-set->list :char-set->string
   :char-set-size :char-set-count :char-set-contains? :char-set-every
   :char-set-any :char-set-adjoin :char-set-delete :char-set-adjoin!
   :char-set-delete! :char-set-complement :char-set-union :char-set-intersection
   :char-set-complement! :char-set-union! :char-set-intersection!
   :char-set-difference :char-set-xor :char-set-diff+intersection
   :char-set-difference! :char-set-xor! :char-set-diff+intersection!))

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
