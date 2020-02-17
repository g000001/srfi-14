;;;; srfi-14.asd

(cl:in-package :asdf)


(defsystem :srfi-14
  :version "20200218"
  :description "SRFI 14 for CL: Character-set Library"
  :long-description "SRFI 14 for CL: Character-set Library
https://srfi.schemers.org/srfi-14"
  :author "Massachusetts Institute of Technology"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (:srfi-5 :srfi-9 :srfi-23)
  :components ((:file "package")
               (:file "util")
               (:file "srfi-14")
               (:file "test")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-14))))
  (let ((name "https://github.com/g000001/srfi-14")
        (nickname :srfi-14))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


(defmethod perform ((o test-op) (c (eql (find-system :srfi-14))))
  (let ((*package*
         (find-package
          "https://github.com/g000001/srfi-14#internals")))
    (eval
     (read-from-string
      "
      (or (let ((result (run 'srfi-14)))
            (explain! result)
            (results-status result))
          (error \"test-op failed\") )"))))


;;; *EOF*
