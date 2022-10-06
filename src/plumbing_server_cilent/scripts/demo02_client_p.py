#! /usr/bin/env python

from urllib import request
import rospy
from plumbing_server_cilent.srv import Addints,AddintsRequest,AddintsResponse
import sys
"""
    客户端：组织并提交请求，处理服务器响应
    0.导包
    1.初始化ROS节点
    2.创建客户端对象
    3.组织请求数据，发送请求
    4.处理响应
    优化：
    动态传入参数
"""
if __name__ ==  "__main__":
    #判断参数长度
    rospy.loginfo(sys.argv[0])
    if len(sys.argv) != 3:
        rospy.logerr("传输参数数量错误")
        sys.exit(1)
    rospy.init_node("client_py")
    num1 = eval(sys.argv[1])
    num2 = eval(sys.argv[2])
    client = rospy.ServiceProxy("addints",Addints)
    #rospy.wait_for_service("TOPICNAME")
    client.wait_for_service()
    req = AddintsRequest(num1,num2)
    response = client.call(req)
    rospy.loginfo("客户端已启动")
    rospy.loginfo("响应的数据为{}".format(response.sum))