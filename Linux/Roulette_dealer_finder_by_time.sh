#!/bin/bash
gdate=$1
gtime=$2
amorpm=$3
awk '{print $1," "$2. " "$5," "$6}' $gdate* | grep -i -E "$gtime.*$amorpm"
