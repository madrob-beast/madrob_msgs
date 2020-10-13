# MADROB lock messages

# Status constants
uint8   LATCH_STATE_CLOSED = 0
uint8   LATCH_STATE_OPEN = 1
uint8   LATCH_STATE_HOLD = 2
uint8   LATCH_STATE_RELEASED = 3

Header header

float32 handle_angle # Handle angle [rad]
uint8 latch_state    # Latch state
bool overridden      # Is the handle control overridden?

