; Auto-generated. Do not edit!


(cl:in-package finalpro-msg)


;//! \htmlinclude posmesin.msg.html

(cl:defclass <posmesin> (roslisp-msg-protocol:ros-message)
  ((posx
    :reader posx
    :initarg :posx
    :type cl:fixnum
    :initform 0)
   (posy
    :reader posy
    :initarg :posy
    :type cl:fixnum
    :initform 0)
   (sudut
    :reader sudut
    :initarg :sudut
    :type cl:fixnum
    :initform 0))
)

(cl:defclass posmesin (<posmesin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <posmesin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'posmesin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name finalpro-msg:<posmesin> is deprecated: use finalpro-msg:posmesin instead.")))

(cl:ensure-generic-function 'posx-val :lambda-list '(m))
(cl:defmethod posx-val ((m <posmesin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:posx-val is deprecated.  Use finalpro-msg:posx instead.")
  (posx m))

(cl:ensure-generic-function 'posy-val :lambda-list '(m))
(cl:defmethod posy-val ((m <posmesin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:posy-val is deprecated.  Use finalpro-msg:posy instead.")
  (posy m))

(cl:ensure-generic-function 'sudut-val :lambda-list '(m))
(cl:defmethod sudut-val ((m <posmesin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:sudut-val is deprecated.  Use finalpro-msg:sudut instead.")
  (sudut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <posmesin>) ostream)
  "Serializes a message object of type '<posmesin>"
  (cl:let* ((signed (cl:slot-value msg 'posx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'posy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sudut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <posmesin>) istream)
  "Deserializes a message object of type '<posmesin>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sudut) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<posmesin>)))
  "Returns string type for a message object of type '<posmesin>"
  "finalpro/posmesin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'posmesin)))
  "Returns string type for a message object of type 'posmesin"
  "finalpro/posmesin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<posmesin>)))
  "Returns md5sum for a message object of type '<posmesin>"
  "a909f0056339fefb2929ec987b0893ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'posmesin)))
  "Returns md5sum for a message object of type 'posmesin"
  "a909f0056339fefb2929ec987b0893ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<posmesin>)))
  "Returns full string definition for message of type '<posmesin>"
  (cl:format cl:nil "int16 posx~%int16 posy~%int16 sudut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'posmesin)))
  "Returns full string definition for message of type 'posmesin"
  (cl:format cl:nil "int16 posx~%int16 posy~%int16 sudut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <posmesin>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <posmesin>))
  "Converts a ROS message object to a list"
  (cl:list 'posmesin
    (cl:cons ':posx (posx msg))
    (cl:cons ':posy (posy msg))
    (cl:cons ':sudut (sudut msg))
))
