(in-package :ice.config)

(setf (config-env-var) "APP_ENV")

(defparameter *application-root*   (asdf:system-source-directory :cl-braces.ice))
(defparameter *static-directory*   (merge-pathnames #P"public/" *application-root*))

(defconfig |development|
    '())

(defconfig |production|
    '())

(defconfig |test|
    '())

(defun config (&optional key)
  (envy:config #.(package-name *package*) key))

(defun appenv ()
  (uiop:getenv (config-env-var #.(package-name *package*))))

(defun developmentp ()
  (string= (appenv) "development"))

(defun productionp ()
  (string= (appenv) "production"))
