#!/bin/bash
x=0
text="Do you ned to count all file: "
read -p "$text" ny
if [ $ny == "Y" ] || [ $ny == "y" ] || [ $ny == "yes" ] || [ $ny == "Yes" ]
then
    for i in `ls -R`
    do
        echo "pouya is the best",$i
        x=$((x+1))
    done
        echo $x
else
    for i in `ls`
    do
        echo "pouya is the best",$i
        x=$((x+1))
    done
        echo $x
fi

