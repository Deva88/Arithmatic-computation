#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
read a b c

echo The Number are :: $a $b $c

result1=$(($a+$b*$c))
echo $result1

result2=$(($a*$b+$c))
echo $result2

result3=$(($c+$a/$b))
echo $result3

result4=$(($a%$b+$c))
echo $result4
