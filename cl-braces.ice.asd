(in-package :asdf-user)

(defsystem  "cl-braces.ice"
  :description "An integrated environment to explore the `gone' language implementation"
  :author "David Krentzlin <david.krentzlin@gmail.com>"
  :maintainer "David Krentzlin <david.krentzlin@gmail.com>"
  :source-control (:git "https://github.com/certainty/cl-braces.git")
  :license "BSD"
  :version "1.0"
  :depends-on (:alexandria :serapeum :cl-braces.language :clack :lack :envy :caveman2 :spinneret)
  :serial t
  :components
  ((:module "config"
    :components
    ((:file "package")
     (:file "config")))
   (:module "lib"
    :components
    ((:module "app"
      :components
      ((:file "package")))

     (:module "web"
      :components

      ((:module "components"
        :components
                ((:file "package")))

       (:module "pages"
        :components
                ((:file "package")
                 (:file "base")
                 (:module "layouts"
                  :components
                          ((:file "default")))
                 (:file "home")))

       (:module "controllers"
        :components
                ((:file "package")))

       (:file "package")
       (:file "endpoint")
       (:file "router")
       (:file "main")
       (:static-file "clackup.lisp")))))
   (:module "priv"
    :components
    ((:file "package")))
   (:module "public"
    :components
    ((:static-file "404.html")
     (:module "assets"
      :components
      ((:static-file "app.css")))))))
