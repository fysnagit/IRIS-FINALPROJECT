;; Auto-generated. Do not edit!


(when (boundp 'finalpro::messagetomotor)
  (if (not (find-package "FINALPRO"))
    (make-package "FINALPRO"))
  (shadow 'messagetomotor (find-package "FINALPRO")))
(unless (find-package "FINALPRO::MESSAGETOMOTOR")
  (make-package "FINALPRO::MESSAGETOMOTOR"))

(in-package "ROS")
;;//! \htmlinclude messagetomotor.msg.html


(defclass finalpro::messagetomotor
  :super ros::object
  :slots (_centx _centy _sudut _kec_x _kec_y _kec_sudut ))

(defmethod finalpro::messagetomotor
  (:init
   (&key
    ((:centx __centx) 0)
    ((:centy __centy) 0)
    ((:sudut __sudut) 0)
    ((:kec_x __kec_x) 0)
    ((:kec_y __kec_y) 0)
    ((:kec_sudut __kec_sudut) 0)
    )
   (send-super :init)
   (setq _centx (round __centx))
   (setq _centy (round __centy))
   (setq _sudut (round __sudut))
   (setq _kec_x (round __kec_x))
   (setq _kec_y (round __kec_y))
   (setq _kec_sudut (round __kec_sudut))
   self)
  (:centx
   (&optional __centx)
   (if __centx (setq _centx __centx)) _centx)
  (:centy
   (&optional __centy)
   (if __centy (setq _centy __centy)) _centy)
  (:sudut
   (&optional __sudut)
   (if __sudut (setq _sudut __sudut)) _sudut)
  (:kec_x
   (&optional __kec_x)
   (if __kec_x (setq _kec_x __kec_x)) _kec_x)
  (:kec_y
   (&optional __kec_y)
   (if __kec_y (setq _kec_y __kec_y)) _kec_y)
  (:kec_sudut
   (&optional __kec_sudut)
   (if __kec_sudut (setq _kec_sudut __kec_sudut)) _kec_sudut)
  (:serialization-length
   ()
   (+
    ;; int16 _centx
    2
    ;; int16 _centy
    2
    ;; int16 _sudut
    2
    ;; int16 _kec_x
    2
    ;; int16 _kec_y
    2
    ;; int16 _kec_sudut
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _centx
       (write-word _centx s)
     ;; int16 _centy
       (write-word _centy s)
     ;; int16 _sudut
       (write-word _sudut s)
     ;; int16 _kec_x
       (write-word _kec_x s)
     ;; int16 _kec_y
       (write-word _kec_y s)
     ;; int16 _kec_sudut
       (write-word _kec_sudut s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _centx
     (setq _centx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _centy
     (setq _centy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sudut
     (setq _sudut (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kec_x
     (setq _kec_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kec_y
     (setq _kec_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kec_sudut
     (setq _kec_sudut (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get finalpro::messagetomotor :md5sum-) "ed4140bdc09bbb6c72fbfc9d889eae02")
(setf (get finalpro::messagetomotor :datatype-) "finalpro/messagetomotor")
(setf (get finalpro::messagetomotor :definition-)
      "int16 centx
int16 centy
int16 sudut
int16 kec_x
int16 kec_y
int16 kec_sudut


")



(provide :finalpro/messagetomotor "ed4140bdc09bbb6c72fbfc9d889eae02")


