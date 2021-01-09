#!/bin/bash
#Read the input

echo "enter the first port"
read first_port
echo "enter the step"
read step
echo "enter the last port"
read last_port

echo "first port $first_port, step $step, last port $last_port"
if [ $i <= $last_port ]
  then
    for i in $(seq $first_port $step $last_port); do
    echo firewall-cmd --zone=public --add-port=$i/tcp --permanent
    echo "port $i added";
  done
  else
    echo firewall-cmd --reload
fi
