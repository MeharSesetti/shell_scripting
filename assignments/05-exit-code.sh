
#!/bin/bash

# Track whether all commands succeeded
all_success=true

echo "[INFO]: Running ls /tmp..."

if ls /tmp &> /dev/null; then
    echo "SUCCESS"
else
    echo "FAILURE"
    all_success=false
fi


echo "[INFO]: Running ls /fakedir..."

if ls /fakedir &> /dev/null; then
    echo "SUCCESS"
else
    echo "FAILURE"
    all_success=false
fi


echo "[INFO]: Checking internet connectivity..."

if ping -c1 google.com &> /dev/null; then
    echo "Host reachable"
else
    echo "Host not reachable"
    all_success=false
fi


# Final exit status
if [ "$all_success" = true ]; then
    exit 0
else
    exit 1
fi

