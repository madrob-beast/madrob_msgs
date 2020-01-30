# MADROB passage sensor messages

# Status constants (TBD)
uint8   STATUS_OK = 0

Header header

sensor_msgs/Range[4] ranges # Ranges from TOF sensors
uint8   status  # Range sensors status, values defined above

