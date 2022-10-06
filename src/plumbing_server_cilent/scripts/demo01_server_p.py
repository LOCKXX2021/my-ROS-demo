#! /usr/bin/env python
from urllib import response
import rospy
from plumbing_server_cilent.srv import Addints,AddintsRequest,AddintsResponse

if __name__ == "__main__":
    #初始化节点
    rospy.init_node("server_py")
    #创建回调函数 参数：封装了请求数据 返回值 相应数据
    def doNum(request):
        #0.解析封装的整数
        num1 = request.num1
        num2 = request.num2
        #1.返回求和值
        sum = num1 + num2
        #2.将结果封装
        response = AddintsResponse()
        response.sum = sum
        rospy.loginfo("处理的数据为{} {},返回值为{}".format(num1,num2,sum))
        return response

    #创建服务端对象
    server = rospy.Service("addints",Addints,doNum)
    rospy.loginfo("服务器已启动")
    rospy.spin()