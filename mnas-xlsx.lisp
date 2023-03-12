;;;; mnas-xlsx.lisp

(defpackage :mnas-xlsx
  (:use #:cl)
  (:export list-sheets
	   read-sheet
	   read-sheet-to-list
           read-sheet-to-matrix           
	   ))

(in-package :mnas-xlsx)

(defun decode-string (str)
  (babel:octets-to-string
   (babel:string-to-octets
    str
    :encoding (babel-encodings:get-character-encoding :ISO-8859-1))))

(defun encode-string (str)
  (babel:octets-to-string
   (babel:string-to-octets str)
   :encoding (babel-encodings:get-character-encoding :ISO-8859-1)))


(defun list-sheets (file)
  "Возвращает перечень листов документа file"
  (mapcar
   #'(lambda (el)
       (list (first el) (decode-string (second el)) (decode-string (third el)) ))
   (xlsx:list-sheets file)))

(defun read-sheet (file &optional (sheet 1))
  (mapcar
   #'(lambda (el)
       (etypecase (cdr el)
	 (string  (setf (cdr el) (decode-string (cdr el))))
	 (t (cdr el)))
       el)
   (if sheet
       (xlsx:read-sheet
	file
	(etypecase sheet
	  (string (encode-string sheet))
	  (integer sheet)))
       (xlsx:read-sheet file))))

(defun read-sheet-to-list (&key (file (mnas-file-dialog:get-open-file)) (sheet 1) )
  (lst-arr:array2d->list-list-by-row (xlsx:as-matrix (read-sheet file sheet))))

(defun read-sheet-to-matrix (&key (file (mnas-file-dialog:get-open-file)) (sheet 1) )
  (xlsx:as-matrix (read-sheet file sheet)))

