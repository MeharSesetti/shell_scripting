#!/bin/bash


#echo "enter the number, to verify it is even or odd: "
#read num -> takes number from the user and stores it in num variable

rem=$(($1%2))
#if we use $() then it is used for command substitution
#if we use $(()) then it will treat it as arthematic substitution

if [ $rem -eq 0 ]; then # If syntax is ->" if [ command ]; then " after [<space>command<space>]  
	echo "$1 is Even"
else 
	echo "$1 is odd"
fi


