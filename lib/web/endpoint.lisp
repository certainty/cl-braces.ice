(in-package :cl-braces.ice.web)

(defclass <web-application> (<app>) ())
(defvar *web-application* (make-instance '<web-application>))

(defmethod on-exception ((app <web-application>) (code (eql 404)))
  (declare (ignore app))
  (merge-pathnames #P"404.html" *static-directory*))

