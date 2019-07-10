# MADROB passage sensor messages

# Status constants (TBD)
uint8	STATUS_OK = 0
uint8	STATUS_ERROR = 1
uint8	STATUS_TIMEOUT = 2

Header header

sensor_msgs/Range[4] cw_sensor # Ranges from sensor mounted on the CW opening side of the door
sensor_msgs/Range[4] ccw_sensor # Ranges from sensor mounted on the CCW opening side of the door
