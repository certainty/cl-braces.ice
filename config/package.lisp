(in-package :cl-user)

(defpackage cl-braces.ice.config
  (:nicknames :ice.config)
  (:use :cl)
  (:use :cl)
  (:import-from :envy :config-env-var :defconfig)
  (:export
   :config
   :appenv
   :*application-root*
   :*static-directory*
   :developmentp
   :productionp))
