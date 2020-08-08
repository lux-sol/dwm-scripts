#!/bin/bash

num=$(iwconfig wlp3s0 | grep -i signal | sed 's/70.*//' | sed 's/[^0-9]//g')

num=$(($num*100))
num=$(($num/70))

echo "$num"
