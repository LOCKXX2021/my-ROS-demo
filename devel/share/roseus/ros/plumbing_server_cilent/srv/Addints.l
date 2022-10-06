;; Auto-generated. Do not edit!


(when (boundp 'plumbing_server_cilent::Addints)
  (if (not (find-package "PLUMBING_SERVER_CILENT"))
    (make-package "PLUMBING_SERVER_CILENT"))
  (shadow 'Addints (find-package "PLUMBING_SERVER_CILENT")))
(unless (find-package "PLUMBING_SERVER_CILENT::ADDINTS")
  (make-package "PLUMBING_SERVER_CILENT::ADDINTS"))
(unless (find-package "PLUMBING_SERVER_CILENT::ADDINTSREQUEST")
  (make-package "PLUMBING_SERVER_CILENT::ADDINTSREQUEST"))
(unless (find-package "PLUMBING_SERVER_CILENT::ADDINTSRESPONSE")
  (make-package "PLUMBING_SERVER_CILENT::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass plumbing_server_cilent::AddintsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_server_cilent::AddintsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_cilent::AddintsResponse
  :super ros::object
  :slots (_sum ))

(defmethod plumbing_server_cilent::AddintsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_cilent::Addints
  :super ros::object
  :slots ())

(setf (get plumbing_server_cilent::Addints :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_cilent::Addints :datatype-) "plumbing_server_cilent/Addints")
(setf (get plumbing_server_cilent::Addints :request) plumbing_server_cilent::AddintsRequest)
(setf (get plumbing_server_cilent::Addints :response) plumbing_server_cilent::AddintsResponse)

(defmethod plumbing_server_cilent::AddintsRequest
  (:response () (instance plumbing_server_cilent::AddintsResponse :init)))

(setf (get plumbing_server_cilent::AddintsRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_cilent::AddintsRequest :datatype-) "plumbing_server_cilent/AddintsRequest")
(setf (get plumbing_server_cilent::AddintsRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get plumbing_server_cilent::AddintsResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_cilent::AddintsResponse :datatype-) "plumbing_server_cilent/AddintsResponse")
(setf (get plumbing_server_cilent::AddintsResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :plumbing_server_cilent/Addints "4781436a0c2affec8025955a6041e481")


