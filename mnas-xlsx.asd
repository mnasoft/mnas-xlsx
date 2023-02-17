;;;; mnas-xlsx.asd

(defsystem #:mnas-xlsx
  :description "Describe mnas-xlsx here"
  :author "Mykola Matvyeyev <mnasoft@gmail.com>"
  :license "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 or later"  
  :version "0.0.3"
  :serial t
;;;:depends-on (#:xlsx-mnas #:babel )
  :depends-on (#:xlsx #:babel #:lst-arr #:mnas-file-dialog)  
  :components ((:file "mnas-xlsx")))

