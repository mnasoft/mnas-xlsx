;;;; mnas-xlsx.lisp

(in-package #:mnas-xlsx)

(defun decode-string (str)
  (babel:octets-to-string
   (babel:string-to-octets str :encoding (babel-encodings:get-character-encoding :ISO-8859-1))))

(defun encode-string (str)
  (babel:octets-to-string
   (babel:string-to-octets str)
   :encoding (babel-encodings:get-character-encoding :ISO-8859-1)))


(defun list-sheets (file)
  (mapcar
   #'(lambda (el)
       (list (first el) (decode-string (second el)) (decode-string (third el)) ))
   (xlsx:list-sheets file)))

(export 'list-sheets)

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

(export 'read-sheet)






