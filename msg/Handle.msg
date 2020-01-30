# MADROB handle messages

# Status constants
uint8   CALIBRATION_POINT_A = 0
uint8   CALIBRATION_POINT_B = 1
uint8   CALIBRATION_POINT_OFFSET = 2
uint8   CALIBRATION_POINT_NONE = 3

Header header

float32 force   # Forces [Force]
float32 kappa   # Calibration K [Force/ADU]
float32 offset  # Offset [Force]
uint8   calibration_status  # Calibration status, values defined above
