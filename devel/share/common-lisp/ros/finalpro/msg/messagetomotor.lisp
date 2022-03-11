; Auto-generated. Do not edit!


(cl:in-package finalpro-msg)


;//! \htmlinclude messagetomotor.msg.html

(cl:defclass <messagetomotor> (roslisp-msg-protocol:ros-message)
  ((centx
    :reader centx
    :initarg :centx
    :type cl:fixnum
    :initform 0)
   (centy
    :reader centy
    :initarg :centy
    :type cl:fixnum
    :initform 0)
   (sudut
    :reader sudut
    :initarg :sudut
    :type cl:fixnum
    :initform 0)
   (kec_x
    :reader kec_x
    :initarg :kec_x
    :type cl:fixnum
    :initform 0)
   (kec_y
    :reader kec_y
    :initarg :kec_y
    :type cl:fixnum
    :initform 0)
   (kec_sudut
    :reader kec_sudut
    :initarg :kec_sudut
    :type cl:fixnum
    :initform 0))
)

(cl:defclass messagetomotor (<messagetomotor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <messagetomotor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'messagetomotor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name finalpro-msg:<messagetomotor> is deprecated: use finalpro-msg:messagetomotor instead.")))

(cl:ensure-generic-function 'centx-val :lambda-list '(m))
(cl:defmethod centx-val ((m <messagetomotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:centx-val is deprecated.  Use finalpro-msg:centx instead.")
  (centx m))

(cl:ensure-generic-function 'centy-val :lambda-list '(m))
(cl:defmethod centy-val ((m <messagetomotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:centy-val is deprecated.  Use finalpro-msg:centy instead.")
  (centy m))

(cl:ensure-generic-function 'sudut-val :lambda-list '(m))
(cl:defmethod sudut-val ((m <messagetomotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:sudut-val is deprecated.  Use finalpro-msg:sudut instead.")
  (sudut m))

(cl:ensure-generic-function 'kec_x-val :lambda-list '(m))
(cl:defmethod kec_x-val ((m <messagetomotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:kec_x-val is deprecated.  Use finalpro-msg:kec_x instead.")
  (kec_x m))

(cl:ensure-generic-function 'kec_y-val :lambda-list '(m))
(cl:defmethod kec_y-val ((m <messagetomotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:kec_y-val is deprecated.  Use finalpro-msg:kec_y instead.")
  (kec_y m))

(cl:ensure-generic-function 'kec_sudut-val :lambda-list '(m))
(cl:defmethod kec_sudut-val ((m <messagetomotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:kec_sudut-val is deprecated.  Use finalpro-msg:kec_sudut instead.")
  (kec_sudut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <messagetomotor>) ostream)
  "Serializes a message object of type '<messagetomotor>"
  (cl:let* ((signed (cl:slot-value msg 'centx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'centy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sudut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kec_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kec_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kec_sudut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <messagetomotor>) istream)
  "Deserializes a message object of type '<messagetomotor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'centx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'centy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sudut) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kec_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kec_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kec_sudut) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<messagetomotor>)))
  "Returns string type for a message object of type '<messagetomotor>"
  "finalpro/messagetomotor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'messagetomotor)))
  "Returns string type for a message object of type 'messagetomotor"
  "finalpro/messagetomotor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<messagetomotor>)))
  "Returns md5sum for a message object of type '<messagetomotor>"
  "ed4140bdc09bbb6c72fbfc9d889eae02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'messagetomotor)))
  "Returns md5sum for a message object of type 'messagetomotor"
  "ed4140bdc09bbb6c72fbfc9d889eae02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<messagetomotor>)))
  "Returns full string definition for message of type '<messagetomotor>"
  (cl:format cl:nil "int16 centx~%int16 centy~%int16 sudut~%int16 kec_x~%int16 kec_y~%int16 kec_sudut~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'messagetomotor)))
  "Returns full string definition for message of type 'messagetomotor"
  (cl:format cl:nil "int16 centx~%int16 centy~%int16 sudut~%int16 kec_x~%int16 kec_y~%int16 kec_sudut~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <messagetomotor>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <messagetomotor>))
  "Converts a ROS message object to a list"
  (cl:list 'messagetomotor
    (cl:cons ':centx (centx msg))
    (cl:cons ':centy (centy msg))
    (cl:cons ':sudut (sudut msg))
    (cl:cons ':kec_x (kec_x msg))
    (cl:cons ':kec_y (kec_y msg))
    (cl:cons ':kec_sudut (kec_sudut msg))
))
