;;;; package.lisp

(defpackage #:mnas-xlsx
  (:use #:cl))

(defpackage #:mnas-xlsx
  (:use #:cl)
  (:export mnas-xlsx::list-sheets
	   mnas-xlsx::read-sheet
	   mnas-xlsx::read-sheet-to-list
	   ))

;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
