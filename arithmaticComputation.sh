#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
read a b c

result3=$(($c+$a/$b))
echo $result3
