#!/bin/bash
awk '{print " "$1." "$2," "$5," "$6}' 0310_Dealer_schedule | grep -E '08.*PM'

