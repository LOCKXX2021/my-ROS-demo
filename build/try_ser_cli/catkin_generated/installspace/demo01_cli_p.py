from urllib import request
import rospy
from try_ser_cli.srv import addints,addintsRequest,addintsResponse
import sys

if __name__ == "__main__":
    if len(sys.argv)!= 3:
        rospy.loginfo("参数数量错误")
        sys.exit(1)
    else:
        rospy.init_node("try_client")
        client = rospy.ServiceProxy("try_clinet",addints)
        client.wait_for_service()
        rospy.loginfo("客户端已启动")
        request = addintsRequest()
        request.num1 = eval(sys.argv[1])
        request.num2 = eval(sys.argv[2])
        rospy.loginfo("请求的数据为{}{}".format(request.num1,request.num2))
        client.call(addintsResponse)