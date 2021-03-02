#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
#TO TAKING INPUT FROM USER
read a b c

#COMPUTE ARITHMETIC OPERATION
result1=$(($a+$b*$c))
echo "result :" $result1
result2=$(($a*$b+$c))
echo "result :" $result2
result3=$(($c+$a/$b))
echo "result :" $result3
result4=$(($a%$b+$c))
echo "result :" $result4

#TO DECLEAR THE DICTIONARY
declare -A ar

#TO STORE THE DICTIONARY
ar[result1]=$result1
ar[result2]=$result2
ar[result3]=$result3
ar[result4]=$result4

#TO READ THE DICTIONARY VALUE IN ARRAY
for((i=0; i<=${#ar[@]}; i++))
do

array[i]=${ar[result$((i+1))]}
done
#to print all

echo " ${array[@]} "
