
#!/bin/bash

if [ -z "$1" ]; then 
	echo "Usage: $0 <number>"
	exit 1
fi

n=$1

for (( i=2; i<n; i++ )); do
  if [ $((n % i)) -eq 0 ]; then
    echo "$n is NOT prime"
    exit
  fi
done

echo "$n is prime"   

