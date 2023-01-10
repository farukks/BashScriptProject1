#!/bin/sh 
#check the input file it is exists or not
if [ -f "$1" ]; then
        echo "$1" exists.
        read -p "Do you want it to be modified? (y/n) " var1
        if  [ "$var1" = "y" ] ; then #checking the input
                echo "A random story created and stored in $1.";
        elif [ "$var1" = "n" ] ; then
          exit 0
        else
         echo "please enter correct input!(y/n)" 
        fi
else #deleting the empty lines in files using sed and,then choosing the random one line each of files.After write the output different files.   
 sed  '/^\s*$/d' giris.txt | shuf -n 1 >output1
 sed  '/^\s*$/d' gelisme.txt | shuf -n 1 >output2
 sed  '/^\s*$/d' sonuc.txt | shuf -n 1 >output3

#concatenating multiple files in to a single file
{
cat output1
echo
cat output2
echo
cat output3
} > $1


fi
sed  '/^\s*$/d' giris.txt | shuf -n 1 >output1
sed  '/^\s*$/d' gelisme.txt | shuf -n 1 >output2
sed  '/^\s*$/d' sonuc.txt | shuf -n 1 >output3
{
cat output1
echo
cat output2
echo
cat output3
} > $1




