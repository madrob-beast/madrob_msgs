# MADROB door messages

# State constants
uint8   STATE_IDLE = 0
uint8   STATE_LUT_CW = 1
uint8   STATE_LUT_CCW = 2
uint8   STATE_BRAKE = 3

# Status constants (TBD)
uint8   STATUS_OK = 0
uint8   STATUS_ERROR = 1
uint8   STATUS_TIMEOUT = 2

Header header

float32     angle           # Door position, 0 = CLOSED, >0 CCW, <0 CW [rad]
float32     velocity        # Door angular velocity [rad/s]
float32     duty_cycle      # PWM duty cycle normalized between -1 and 1
float32     supply_current  # Current drawn from the power supply [A]
float32[3]  phase_current   # Motor phase currents [A]
float32     brake_current   # Brake current setpoint [A]
float32     brake_force     # Brake force [N]

uint8       state           # Door state, values defined above
uint8       status          # Door controller status, values defined above
