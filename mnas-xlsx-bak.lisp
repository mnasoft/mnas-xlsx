;;;; mnas-xlsx.lisp

(in-package #:mnas-xlsx)

(xmls:parse 
	  (let ((rez ""))
	    (with-open-file (stream "/msys32/home/namatv/quicklisp/book11.xml" :external-format :utf8)
	     (do ((line (read-line stream nil)
			(read-line stream nil)))
		 ((null line))
	       (setf rez (concatenate 'string rez line))))
	   rez))
