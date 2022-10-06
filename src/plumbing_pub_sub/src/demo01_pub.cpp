#include "ros/ros.h"
#include "std_msgs/String.h"
/*
    发布方实现：
        1.包含头文件
        2.初始化ROS节点
        3.创建节点句柄
        4.创建发布者对象
        5.编写发布逻辑和发布数据
*/

int main(int argc, char  *argv[])
{
    ros::init(argc,argv,"erGouZi");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("fang",10);
    //先创建被发布的消息
    std_msgs::String msg;
    //编写循环发布数据
    while (ros::ok())
    {
        msg.data = "hello";
        pub.publish(msg);
    }
    
    return 0;
}
