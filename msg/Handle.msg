# MADROB handle messages

# Status constants (TBD)
uint8	STATUS_OK = 0
uint8	STATUS_ERROR = 1
uint8	STATUS_TIMEOUT = 2

Header header

float	force		# Average force [N]
uint8	status		# Handle controller status, values defined above
