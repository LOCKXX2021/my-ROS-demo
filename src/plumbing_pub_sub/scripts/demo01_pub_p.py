#! /usr/bin/env python
import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("python_node")
    pub = rospy.Publisher("fang",String,queue_size=10)
    msg = String()
    rate = rospy.Rate(10)
    counts = 0
    rospy.sleep(1)
    while not rospy.is_shutdown():
        counts += 1
        msg.data = "hello python! this is {} times".format(counts)
        pub.publish(msg)
        rospy.loginfo(msg.data)
        rate.sleep()