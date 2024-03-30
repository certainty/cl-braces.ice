(in-package :web.pages)

(s:defconst +bootstrap-css+ "https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css")
(s:defconst +bootstrap-js+ "https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js")

(defmacro with-page ((&key (title "ICE")) &body content)
  `(spinneret:with-html-string
     (:doctype)
     (:html
      (:head
       (:title ,title)
       (:link :rel "stylesheet" :type "text/css" :href +bootstrap-css+ :integrity "sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" :crossorigin "anonymous")
       (:link :rel "stylesheet" :type "text/css" :href "/assets/app.css")
       (:script :src +bootstrap-js+ :integrity "sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" :crossorigin "anonymous"))
      ,@content)))

(defmacro with-fragment (&body content)
  `(spinneret:with-html-string
     ,@content))
