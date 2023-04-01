#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

def control(linear_x, angular_z):
    global pub
    msg = Twist()
    msg.linear.x = linear_x
    msg.linear.y = 0.0
    msg.linear.z = 0.0
    msg.angular.x = 0.0
    msg.angular.y = 0.0
    msg.angular.z = angular_z
    pub.publish(msg)

def move():
    rate = rospy.Rate(1)

    speed = 1.0
    velocity = 1.63
    while not rospy.is_shutdown():
        for i in range(3):
            control(speed, velocity * -1)
            rate.sleep()

        for i in range(1):
            control(speed, 0.0)
            rate.sleep()

        for i in range(3):
            control(speed, velocity)
            rate.sleep()
        
        for i in range(1):
            control(speed, 0.0)
            rate.sleep()

if __name__ == "__main__":
    try:
        rospy.init_node('driving_node', anonymous=True)
        pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
        move()
    except rospy.ROSInterruptException:
        pass
