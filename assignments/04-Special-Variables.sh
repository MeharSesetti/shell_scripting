#!/bin/bash

start_time=$(date +%s)

echo "Running as: $USER"
echo "Directory : $PWD"
echo "Home      : $HOME"
echo "PID of the Script: $$"
sleep 10&
echo "Background PID: $!"
random_time=$(( RANDOM % 100 + 1 ))   
echo "Random number : $random_time"
end_time=$(date +%s)
total=$(($end_time-$start_time))
echo "Script ran in $total seconds"
