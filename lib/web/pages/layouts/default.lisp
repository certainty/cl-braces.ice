(in-package :web.pages)

(defmacro with-default-layout ((&key (title "ICE")) &body body)
  "Wrap the provided body, expressed as markup in the default layout."
  `(with-page (:title ,title)
     (:body
      (:header#header
       :class "header fixed-top d-flex align-items-center"
       (:div :class "container d-flex align-items-left justify-content-between" (:span.logo :class "d-none d-lg-block" "ICE")))

      (:aside#sidebar
       (:ul.sidebar-nav
        (:li.nav-item (:a.nav-link :href "#main" "Item1"))
        (:li.nav-item (:a.nav-link :href "#main" "Item2"))))
      (:main :id "main" :class "sidebar-open" ,@body))))
