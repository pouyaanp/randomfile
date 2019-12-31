#!/bin/bash

mkfile() {
    cd test
    cd $1
    for i in {1..1001}
    do
        touch $RANDOM.txt
    done
        echo "all file made!!!"
    cd ..
}

mkdir test
cd test
for i in {1..1001}
do
    echo `mkdir $RANDOM`
done
clear
echo "all 1000 directory made!!!"
sleep 3
cd test
for x in `ls`
do
    cd $x
    mkfile "$x"
    cd ..
    cd $x
done

lr="Do you want to count your file: "
read -p "$lr" py
if [ $py == "Y" ] || [ $py == "y" ] || [ $py == "yes" ] || [ $py == "Yes" ]
then 
clear
f=0
text="Do you ned to count all file: "
read -p "$text" ny
if [ $ny == "Y" ] || [ $ny == "y" ] || [ $ny == "yes" ] || [ $ny == "Yes" ]
then
    for i in `ls -R`
    do
        echo "pouya is the best",$i
        f=$((f+1))
    done
        echo $f
else
    for i in `ls`
    do
        echo "pouya is the best",$i
        f=$((f+1))
    done
        echo $f
fi
else
echo "All your file made"
fi
