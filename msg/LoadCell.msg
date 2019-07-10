# MADROB load cell messages

# Status bitmask constants (from ADS1262 ADC)
uint8	STATUS_OK = 0x00
uint8	STATUS_PGAL = 0x01
uint8	STATUS_PGAH = 0x02
uint8	STATUS_PGAD = 0x04

uint32	adu		# ADC reading [ADU]
uint8	status	# Handle controller status, values defined above
