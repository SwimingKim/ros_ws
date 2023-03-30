#!/usr/bin/env python
# license removed for brevity
import rospy
from custom_message.msg import person

def talker():
    pub = rospy.Publisher('chatter', person, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    msg = person()
    msg.first_name = "gildon"
    msg.last_name = "Hong"
    msg.age = 24
    msg.score = 95

    while not rospy.is_shutdown():
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
