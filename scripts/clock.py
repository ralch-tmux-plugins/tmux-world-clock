#!/usr/bin/env python3

import sys
import string
import pytz
from datetime import datetime

tz   = sys.argv[1]
bg   = sys.argv[2]
fg   = sys.argv[3]
fmt  = sys.argv[4]

# get the current date-time
clock = datetime.now(pytz.timezone(tz))

# find the desired timezone
clock_zone_name = clock.tzname()

# prepare the date-time format
clock_format = fmt.replace("%tz", clock_zone_name)
clock_format = clock_format.replace("_", " ")

# format the date-time value
clock_value = clock.strftime(clock_format)

# set color output formatting if not "default"
clock_fg="" if fg=="default" else '#[fg='+fg+']'
clock_bg="" if bg=="default" else '#[bg='+bg+']'

print(clock_fg+clock_bg+" "+clock_value+" ")
