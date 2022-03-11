; Auto-generated. Do not edit!


(cl:in-package finalpro-msg)


;//! \htmlinclude data.msg.html

(cl:defclass <data> (roslisp-msg-protocol:ros-message)
  ((centerx
    :reader centerx
    :initarg :centerx
    :type cl:fixnum
    :initform 0)
   (centery
    :reader centery
    :initarg :centery
    :type cl:fixnum
    :initform 0))
)

(cl:defclass data (<data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name finalpro-msg:<data> is deprecated: use finalpro-msg:data instead.")))

(cl:ensure-generic-function 'centerx-val :lambda-list '(m))
(cl:defmethod centerx-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:centerx-val is deprecated.  Use finalpro-msg:centerx instead.")
  (centerx m))

(cl:ensure-generic-function 'centery-val :lambda-list '(m))
(cl:defmethod centery-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader finalpro-msg:centery-val is deprecated.  Use finalpro-msg:centery instead.")
  (centery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data>) ostream)
  "Serializes a message object of type '<data>"
  (cl:let* ((signed (cl:slot-value msg 'centerx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'centery)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data>) istream)
  "Deserializes a message object of type '<data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'centerx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'centery) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data>)))
  "Returns string type for a message object of type '<data>"
  "finalpro/data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data)))
  "Returns string type for a message object of type 'data"
  "finalpro/data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data>)))
  "Returns md5sum for a message object of type '<data>"
  "470a37c8695ec4f9019a304d43b6f6d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data)))
  "Returns md5sum for a message object of type 'data"
  "470a37c8695ec4f9019a304d43b6f6d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data>)))
  "Returns full string definition for message of type '<data>"
  (cl:format cl:nil "int16 centerx~%int16 centery~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data)))
  "Returns full string definition for message of type 'data"
  (cl:format cl:nil "int16 centerx~%int16 centery~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data>))
  "Converts a ROS message object to a list"
  (cl:list 'data
    (cl:cons ':centerx (centerx msg))
    (cl:cons ':centery (centery msg))
))
