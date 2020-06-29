# MADROB door messages

# Mode constants
uint8   MODE_DISABLED = 0   # No control
uint8   MODE_LUT = 1        # LUT
uint8   MODE_BRAKE = 3      # Fixed setpoint
uint8   MODE_CALIB_KT = 123 # KT calibration (current ramp)

# State constants
uint8   STATE_IDLE = 0          # The door is free
uint8   STATE_LUT_CW = 1        # Using CW LUT
uint8   STATE_LUT_CCW = 2       # Using CCW LUT
uint8   STATE_BRAKE = 3         # Fixed setpoint braking
uint8   STATE_CALIB_KT_INIT = 4 # KT calibration init
uint8   STATE_CALIB_KT_PRE = 5  # KT calibration tensioning
uint8   STATE_CALIB_KT = 6      # KT calibration current ramp
uint8   STATE_CALIB_KT_POST = 7 # KT calibration detensioning

# Status constants
uint8   STATUS_OK = 0

# Method
uint8    METHOD_FREE = 0       # Free 
uint8    METHOD_BRAKE = 1      # VESC brake
uint8    METHOD_HANDBRAKE = 2  # VESC handbrake
uint8    METHOD_SPEED = 3      # Speed = 0 PID controller
uint8    METHOD_ROTOR_LOCK = 4 # VESC rotor lock

# Measurement units
uint8    MU_PERCENT = 0 # Setpoints are in % of maximum current
uint8    MU_FORCE= 1    # Setpoints are in [Force]


Header header

float32     angle           # Door position, 0 = CLOSED, >0 CCW, <0 CW [rad]
float32     velocity        # Door angular velocity [rad/s]
float32     duty_cycle      # PWM duty cycle normalized between -1 and 1
float32     supply_current  # Current drawn from the power supply [A]
float32     phase_current   # Motor phase current [A]

uint8       mode            # Door mode, values defined above
uint8       state           # Door state, values defined above
uint8       status          # Door controller status, values defined above

uint8       brake_method    # Braking method, values defined above
uint8       brake_mu        # Braking setpoint measurement units, values defined above
float32     brake_setpoint  # Setpoint [brake_mu]
float32     brake_current   # Brake current setpoint [%]
float32     brake_force     # Brake force [Force]
float32     iq_setpoint     # Iq setpoint

float32     position_calibration_ccw  # Encoder duty cycle at max CCW
float32     position_calibration_zero # Encoder duty cycle at zero
float32     position_calibration_cw   # Encoder duty cycle at max CW

float32     kt  # [Handle ADU / Motor %]

