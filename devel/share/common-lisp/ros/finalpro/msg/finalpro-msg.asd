
(cl:in-package :asdf)

(defsystem "finalpro-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "data" :depends-on ("_package_data"))
    (:file "_package_data" :depends-on ("_package"))
    (:file "messagetomotor" :depends-on ("_package_messagetomotor"))
    (:file "_package_messagetomotor" :depends-on ("_package"))
    (:file "posmesin" :depends-on ("_package_posmesin"))
    (:file "_package_posmesin" :depends-on ("_package"))
  ))