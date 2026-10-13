#!/bin/bash

start_time=$(date +%s)
echo "Script started executed at : $start_time in Epoch time"

sleep 10

end_time=$(date +%s)
echo "Script completed at : $end_time in Epoch time"

total_time=$((end_time - start_time))

echo "total time taken to complete: $total_time in seconds"
