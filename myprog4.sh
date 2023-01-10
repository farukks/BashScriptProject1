#!/bin/bash
rem=0
hex=""
array=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "C" "D" "E" "F")
if [ $# -eq 0 ] #checking the argument is supplied or not
then 
	echo "no arg supplied"
	exit
fi
case ${1#[-+]} in  #just taking integer input
	*[!0-9]* | '') echo "sory integers only"
		exit
esac
i=2
#checking the integer input is prime or not
while [ $i -lt  $1 ]
do
    prime_flag=1
    j=2
    while [ $j -lt $i ] #comparing j and i,if j less than i then do while loop
    do
         rem=$(( $i % $j ))
        if [ $rem -eq 0 ]
        then
          prime_flag=0
          break
        fi
    j=$(( $j+1 )) #increase the j variable
    done
    if [ $prime_flag -eq 1 ] #if prime_flag is equal 1 then convert the hex and print
    then
        k=$i
        while [ $k -gt 0 ] #converting decimal to hexadecimal   
        do
                rem=$((k%16))
                hex="${array[$rem]}${hex}"
                k=$((k/16))
        done
        echo "Hexadecimal of $i is $hex"
        unset hex       
    fi
i=$(( $i+1 )) #increase the i variable 
done


