# MADROB door messages

# Mode constants
uint8   DISABLED = 0
uint8   MODE_LUT = 1
uint8   MODE_BRAKE = 3

# State constants
uint8   STATE_IDLE = 0
uint8   STATE_LUT_CW = 1
uint8   STATE_LUT_CCW = 2
uint8   STATE_BRAKE = 3

# Status constants (TBD)
uint8   STATUS_OK = 0
uint8   STATUS_ERROR = 1
uint8   STATUS_TIMEOUT = 2

# Method
uint8    METHOD_FREE = 0
uint8    METHOD_BRAKE = 1
uint8    METHOD_HANDBRAKE = 2
uint8    METHOD_SPEED = 3
uint8    METHOD_ROTOR_LOCK = 4

# Measurement units
uint8    MU_PERCENT = 0
uint8    MU_FORCE= 1


Header header

float32     angle           # Door position, 0 = CLOSED, >0 CCW, <0 CW [rad]
float32     velocity        # Door angular velocity [rad/s]
float32     duty_cycle      # PWM duty cycle normalized between -1 and 1
float32     supply_current  # Current drawn from the power supply [A]
float32     phase_current   # Motor phase current [A]

uint8       mode            # Door mode, values defined above
uint8       state           # Door state, values defined above
uint8       status          # Door controller status, values defined above

uint8       brake_method    # Braking method
uint8       brake_mu        # Braking setpoint measurement units
float32     brake_setpoint  # Setpoint
float32     brake_current   # Brake current setpoint [%]
float32     brake_force     # Brake force [N]

float32     position_calibration_ccw  # TODO
float32     position_calibration_zero # TODO
float32     position_calibration_cw   # TODO

float32     kt  # TODO

