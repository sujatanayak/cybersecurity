#!/bin/bash
sdate=$1
stime=$2
game=$3
	if [[ $sdate == "031"[025] ]]; then
	
		if [[ $game == [bB]"lack"* ]]; then
		awk '{print " "$1," "$2," "$3," "$4}' $sdate*D* | grep -i $stime.*
		elif [[ $game == [rR]"oul"* ]]; then
		awk '{print " "$1," "$2," "$5," "$6}' $sdate*D* | grep -i $stime.*
		elif [[ $game ==  [Tt]"exa"* ]]; then
		echo "3"
		awk '{print " "$1," "$2," "$7," "$8}' $sdate*D* | grep -i $stime.*
		else
		echo "enter a valid time and game" 
		fi
	else
		echo " enter a valid 4 digit date"
	fi
