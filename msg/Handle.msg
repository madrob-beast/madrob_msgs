# MADROB handle messages

# Status constants (TBD)
uint8   CALIBRATION_POINT_A = 0
uint8   CALIBRATION_POINT_B = 1
uint8   CALIBRATION_POINT_OFFSET = 2
uint8   CALIBRATION_POINT_NONE = 3

Header header

float32 force   # Forces [N]
float32 kappa   # Calibration K [N/ADU]
float32 offset  # Offset [N]
uint8   calibration_status  # Calibration status, values defined above
