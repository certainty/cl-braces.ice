(in-package :cl-user)

(defpackage :cl-braces.ice.web.pages
  (:nicknames :ice.web.pages :web.pages :pages)
  (:use :cl)
  (:local-nicknames (:s :serapeum) (:a :alexandria))
  (:export :home :with-page :with-fragment :with-default-layout))
