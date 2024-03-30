(ql:quickload :cl-braces.ice)

(in-package :cl-braces.ice.web)

(builder
 (:static
  :path (lambda (path)
          (if (ppcre:scan "^(?:/assets/|/images/|/css/|/js/|/robot\\.txt$|/favicon\\.ico$)" path)
              path
              nil))
  :root *static-directory*)

 (unless (productionp) :accesslog)
 (if (getf (config) :error-log)
     `(:backtrace
       :output ,(getf (config) :error-log))
     nil)
 :session
 nil
 *web-application*)
