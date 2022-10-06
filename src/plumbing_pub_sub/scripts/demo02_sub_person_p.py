#! /usr/bin/env python
import rospy
from plumbing_pub_sub.msg import Person

def doMsgs(msg):
    rospy.loginfo(msg)

if __name__ == "__main__":
    rospy.init_node("personSub")
    sub = rospy.Subscriber("personTopic",Person,doMsgs,queue_size=10)
    rospy.spin()