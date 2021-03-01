#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
read a b c

echo The Number are :: $a $b $c

result1=$(($a+$b*$c))

result2=$(($a*$b+$c))

result3=$(($c+$a/$b))

result4=$(($a%$b+$c))

declare -A ar

ar[UC1]=$result1
ar[UC2]=$result2
ar[UC3]=$result3
ar[UC4]=$result4

echo ${ar[*]}
