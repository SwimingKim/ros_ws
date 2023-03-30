#!/usr/bin/env python
import rospy
from custom_message.msg import person

def callback(msg):
    print ("1. Name: ", msg.last_name + msg.first_name)
    print ("2. Age: ", msg.age)
    print ("3. Score: " , msg.score)
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", person, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
