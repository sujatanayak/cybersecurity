#!/bin/bash
echo "enter a 4 digit date: "

read sdate
echo "enter a time with AM or PM: "
read stime
echo "enter a game: "
read game
	if [[ $sdate == "031"[025] ]]; then
	
		if [[ $game == [bB]"lack"* ]]; then
		awk '{print " "$1," "$2," "$3," "$4}' $sdate*D* | grep -i $stime.*
		elif [[ $game == [rR]"oul"* ]]; then
		awk '{print " "$1," "$2," "$5," "$6}' $sdate*D* | grep -i $stime.*
		elif [[ $game ==  [Tt]"exa"* ]]; then
		awk '{print " "$1," "$2," "$7," "$8}' $sdate*D* | grep -i $stime.*
		else
		echo "enter a valid time and game" 
		fi
	else
		echo " enter a valid 4 digit date"
	fi
