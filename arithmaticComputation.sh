#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
read a b c

result=$(($a%$b+$c))
echo $result
