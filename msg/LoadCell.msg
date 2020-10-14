# MADROB load cell messages

# Status bitmask constants (from ADS1262 ADC)
uint8   STATUS_OK = 0
uint8   STATUS_PGAL = 1
uint8   STATUS_PGAH = 2
uint8   STATUS_PGAD = 4

int32   adu     # ADC reading [ADU]
float32 force   # Calibrated force [N]
uint8   status  # Handle controller status, values defined above
