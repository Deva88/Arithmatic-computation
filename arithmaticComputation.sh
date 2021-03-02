#!/bin/bash -x
read a b c
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

declare -A dr

dr[a]=$result1
dr[b]=$result2
dr[c]=$result3
dr[d]=$result4


    VALUES=()
    count=0
    for DATA in "${dr[@]}" ; do
        VALUES+=("${DATA##*:}")
		  let count++
    done

		for((i=0;i<count;i++))
		do
		   ar[i]=${VALUES[i]}
      done

		echo="value of dictionary in array is: ${ar[@]}"

for((i=0;i<$(($count-1));i++))
do
for((j=$(($i+1));j<count;j++))
do
if((${ar[i]}<${ar[j]}))
then
temp=${ar[i]}
ar[$i]=${ar[j]}
ar[$j]=$temp
fi
done
done
echo ${ar[@]}
