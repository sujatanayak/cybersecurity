#!/bin/bash
awk '{print " "$1." "$2," "$5," "$6}' 0315_Dealer_schedule | grep -E '02.*PM'
