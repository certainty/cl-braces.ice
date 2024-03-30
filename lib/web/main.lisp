(in-package :cl-braces.ice.web)

(defvar *appfile-path* (asdf:system-relative-pathname :cl-braces.ice #P"lib/web/clackup.lisp"))
(defvar *handler* nil)

(defun start (&rest args &key server port debug &allow-other-keys)
  (declare (ignore server port debug))

  (when *handler*
    (restart-case (error "Server is already running.")
      (restart-server ()
        :report "Restart the server"
        (stop))))
  (setf *handler*
        (apply #'clackup *appfile-path* args)))

(defun stop ()
  (prog1 (clack:stop *handler*)
    (setf *handler* nil)))

(defun reload ()
  (stop)
  (start))
