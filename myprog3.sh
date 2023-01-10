#iterate through every file
for i in *
do
#if it has write permission and not the program itself and not a folder
#create folder writeable and put them in it
#-p for no error on terminal
  if [ -w "$i" ] && [ "$i" != "myprog3.sh" ] && [ -f "$i" ]
  then
    mkdir -p writable
    mv $i ./writable
  fi
done

