;;;; srfi-14.asd

(cl:in-package :asdf)

(defsystem :srfi-14
  :serial t
  :depends-on (:srfi-9)
  :components ((:file "package")
               (:file "util")
               (:file "srfi-14")
               (:file "charset")
               (:file "test")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-14))))
  (load-system :srfi-14)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-14-internal :srfi-14))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))
