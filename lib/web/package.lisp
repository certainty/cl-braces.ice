(in-package :cl-user)

(defpackage :cl-braces.ice.web
  (:nicknames :ice.web :web)
  (:use :cl :caveman2)
  (:import-from :clack :clackup)
  (:import-from :lack.builder :builder)
  (:import-from :ppcre :scan :regex-replace)
  (:import-from :ice.config :config :productionp :*static-directory*)
  (:export
   :*web-application*
   :start
   :reload
   :stop))
