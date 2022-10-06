#! /usr/bin/env python
import rospy
from plumbing_pub_sub.msg import Person

if __name__ == "__main__":
    rospy.init_node("personPub")
    pub = rospy.Publisher("personTopic",Person,queue_size=10)
    person_msg = Person()
    person_msg.age = 10
    person_msg.name = "Ultraman"
    person_msg.height = 200000
    rate = rospy.Rate(10)
    rospy.sleep(1)
    while not rospy.is_shutdown():
        pub.publish(person_msg)
        rospy.loginfo("我已发送")
        rate.sleep()