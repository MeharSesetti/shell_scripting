#!/bin/bash

#Special Variables: 

echo "Number of arguments passed : $#"
echo "Printing all the passed arguments: $@"
echo "printing file name: $0"
echo "name of the user: $USER"
echo "realpath will print the path of the current script: $(realpath $0)" # syntax is realpath <file name>
echo "Line number : $LINENO"

echo "Directory : $PWD"
echo "Home path is $HOME"

echo "Total time executed in seconds: $SECONDS"


echo "does all the commands above commands ran successful or not?, below is the answer"
echo "$? ..... <- here is the Answer at line === $LINENO"

echo "If zero means it was successful and other than zero means failed."

echo "the script will be going to sleep for 10 seconds"
echo "Printing the PID of the current script : $$"
sleep 10 & 
echo "PID of the command running in background now : $!"
echo "script slept for 10 seconds"

