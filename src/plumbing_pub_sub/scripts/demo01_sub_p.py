#! /usr/bin/env python

import rospy
from std_msgs.msg import String

def doMsgs(msg):
    rospy.loginfo( "I heard {}".format(msg.data) )
if __name__ == "__main__":
    rospy.init_node("python_sub_node")
    sub = rospy.Subscriber("fang",String,doMsgs,queue_size=10)
    rospy.spin()