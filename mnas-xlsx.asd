;;;; mnas-xlsx.asd

(asdf:defsystem #:mnas-xlsx
  :description "Describe mnas-xlsx here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.2"
  :serial t
  :depends-on (#:xlsx-mnas #:babel )
  :components ((:file "package")
               (:file "mnas-xlsx")))
