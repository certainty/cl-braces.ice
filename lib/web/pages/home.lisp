(in-package :ice.web.pages)

(defun home ()
  (with-default-layout (:title "ICE::Home")
    (:div "Hello World")))
