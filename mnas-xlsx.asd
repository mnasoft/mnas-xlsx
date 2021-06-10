;;;; mnas-xlsx.asd

(defsystem #:mnas-xlsx
  :description "Describe mnas-xlsx here"
  :author "Nick Matvyeyev <mnasoft@gmail.com>"
  :license "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 or later"  
  :version "0.0.2"
  :serial t
;;;:depends-on (#:xlsx-mnas #:babel )
  :depends-on (#:xlsx #:babel #:lst-arr #:mnas-file-dialog)  
  :components ((:file "package")
               (:file "mnas-xlsx")))

