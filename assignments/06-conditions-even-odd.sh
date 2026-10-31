#!/bin/bash
echo "enter the number, to verify it is even or odd: "
read num

rem=$(($num%2))
#if we use $() then it is used for command substitution
#if we use $(()) then it will treat it as arthematic substitution

if [ $rem -eq 0 ]; then # If syntax is ->" if [ command ]; then " after [<space>command<space>]  
	echo "$num is Even"
else 
	echo "$num is odd"
fi


