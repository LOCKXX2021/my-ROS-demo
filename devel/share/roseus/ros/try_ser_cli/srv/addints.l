;; Auto-generated. Do not edit!


(when (boundp 'try_ser_cli::addints)
  (if (not (find-package "TRY_SER_CLI"))
    (make-package "TRY_SER_CLI"))
  (shadow 'addints (find-package "TRY_SER_CLI")))
(unless (find-package "TRY_SER_CLI::ADDINTS")
  (make-package "TRY_SER_CLI::ADDINTS"))
(unless (find-package "TRY_SER_CLI::ADDINTSREQUEST")
  (make-package "TRY_SER_CLI::ADDINTSREQUEST"))
(unless (find-package "TRY_SER_CLI::ADDINTSRESPONSE")
  (make-package "TRY_SER_CLI::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass try_ser_cli::addintsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod try_ser_cli::addintsRequest
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

(defclass try_ser_cli::addintsResponse
  :super ros::object
  :slots (_sum ))

(defmethod try_ser_cli::addintsResponse
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

(defclass try_ser_cli::addints
  :super ros::object
  :slots ())

(setf (get try_ser_cli::addints :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get try_ser_cli::addints :datatype-) "try_ser_cli/addints")
(setf (get try_ser_cli::addints :request) try_ser_cli::addintsRequest)
(setf (get try_ser_cli::addints :response) try_ser_cli::addintsResponse)

(defmethod try_ser_cli::addintsRequest
  (:response () (instance try_ser_cli::addintsResponse :init)))

(setf (get try_ser_cli::addintsRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get try_ser_cli::addintsRequest :datatype-) "try_ser_cli/addintsRequest")
(setf (get try_ser_cli::addintsRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get try_ser_cli::addintsResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get try_ser_cli::addintsResponse :datatype-) "try_ser_cli/addintsResponse")
(setf (get try_ser_cli::addintsResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :try_ser_cli/addints "4781436a0c2affec8025955a6041e481")


