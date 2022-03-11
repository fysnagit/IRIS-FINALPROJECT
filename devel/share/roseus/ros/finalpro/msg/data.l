;; Auto-generated. Do not edit!


(when (boundp 'finalpro::data)
  (if (not (find-package "FINALPRO"))
    (make-package "FINALPRO"))
  (shadow 'data (find-package "FINALPRO")))
(unless (find-package "FINALPRO::DATA")
  (make-package "FINALPRO::DATA"))

(in-package "ROS")
;;//! \htmlinclude data.msg.html


(defclass finalpro::data
  :super ros::object
  :slots (_centerx _centery ))

(defmethod finalpro::data
  (:init
   (&key
    ((:centerx __centerx) 0)
    ((:centery __centery) 0)
    )
   (send-super :init)
   (setq _centerx (round __centerx))
   (setq _centery (round __centery))
   self)
  (:centerx
   (&optional __centerx)
   (if __centerx (setq _centerx __centerx)) _centerx)
  (:centery
   (&optional __centery)
   (if __centery (setq _centery __centery)) _centery)
  (:serialization-length
   ()
   (+
    ;; int16 _centerx
    2
    ;; int16 _centery
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _centerx
       (write-word _centerx s)
     ;; int16 _centery
       (write-word _centery s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _centerx
     (setq _centerx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _centery
     (setq _centery (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get finalpro::data :md5sum-) "470a37c8695ec4f9019a304d43b6f6d3")
(setf (get finalpro::data :datatype-) "finalpro/data")
(setf (get finalpro::data :definition-)
      "int16 centerx
int16 centery
")



(provide :finalpro/data "470a37c8695ec4f9019a304d43b6f6d3")


