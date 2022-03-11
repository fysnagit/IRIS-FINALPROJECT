;; Auto-generated. Do not edit!


(when (boundp 'finalpro::posmesin)
  (if (not (find-package "FINALPRO"))
    (make-package "FINALPRO"))
  (shadow 'posmesin (find-package "FINALPRO")))
(unless (find-package "FINALPRO::POSMESIN")
  (make-package "FINALPRO::POSMESIN"))

(in-package "ROS")
;;//! \htmlinclude posmesin.msg.html


(defclass finalpro::posmesin
  :super ros::object
  :slots (_posx _posy _sudut ))

(defmethod finalpro::posmesin
  (:init
   (&key
    ((:posx __posx) 0)
    ((:posy __posy) 0)
    ((:sudut __sudut) 0)
    )
   (send-super :init)
   (setq _posx (round __posx))
   (setq _posy (round __posy))
   (setq _sudut (round __sudut))
   self)
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:sudut
   (&optional __sudut)
   (if __sudut (setq _sudut __sudut)) _sudut)
  (:serialization-length
   ()
   (+
    ;; int16 _posx
    2
    ;; int16 _posy
    2
    ;; int16 _sudut
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _posx
       (write-word _posx s)
     ;; int16 _posy
       (write-word _posy s)
     ;; int16 _sudut
       (write-word _sudut s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _posx
     (setq _posx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _posy
     (setq _posy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sudut
     (setq _sudut (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get finalpro::posmesin :md5sum-) "a909f0056339fefb2929ec987b0893ef")
(setf (get finalpro::posmesin :datatype-) "finalpro/posmesin")
(setf (get finalpro::posmesin :definition-)
      "int16 posx
int16 posy
int16 sudut

")



(provide :finalpro/posmesin "a909f0056339fefb2929ec987b0893ef")


