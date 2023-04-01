#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import time

def move():
    rospy.init_node('my_node', anonymous=True)
    pub = rospy.Publisher('/husky_velocity_controller/cmd_vel', Twist, queue_size=10)
    msg = Twist()
    rate = rospy.Rate(1)

    speed = 10
    velocity = 15
    while not rospy.is_shutdown():
        for i in range(10):
            msg.linear.x = speed
            msg.linear.y = 0.0
            msg.linear.z = 0.0
            msg.angular.x = 0.0
            msg.angular.y = 0.0
            msg.angular.z = velocity * -1
            pub.publish(msg)
            rate.sleep()

        for i in range(5):
            msg.linear.x = speed
            msg.linear.y = 0.0
            msg.linear.z = 0.0
            msg.angular.x = 0.0
            msg.angular.y = 0.0
            msg.angular.z = 0.0
            pub.publish(msg)
            rate.sleep()

        for i in range(10):
            msg.linear.x = speed
            msg.linear.y = 0.0
            msg.linear.z = 0.0
            msg.angular.x = 0.0
            msg.angular.y = 0.0
            msg.angular.z = velocity
            pub.publish(msg)
            rate.sleep()
        
        for i in range(5):
            msg.linear.x = speed
            msg.linear.y = 0.0
            msg.linear.z = 0.0
            msg.angular.x = 0.0
            msg.angular.y = 0.0
            msg.angular.z = 0.0
            pub.publish(msg)
            rate.sleep()
            
        #while not rospy.is_shutdown():
            #pub.publish(msg)
            #rate.sleep()

if __name__ == "__main__":
    try:
        move()
    except rospy.ROSInterruptException:
        pass
