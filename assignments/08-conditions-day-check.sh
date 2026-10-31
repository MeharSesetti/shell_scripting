#!/bin/bash


day=$(date +%A | awk '{print $1}')
echo "Todays Day is : $day"

if [ $day = "Saturday" ]; then 
	echo "Weekend! Enjoy your holiday."
elif [ $day = "Sunday" ]; then
	echo "Weekend! Enjoy your holiday."
elif [ $day == "Monday" ]; then 
	echo "Start of the Week. Let's go!"
else 
	echo "Weekday. Go to school/work."
fi

