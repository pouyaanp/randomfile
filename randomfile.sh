#!/bin/bash

mkfile() {
cd test
cd $1
for i in {1..101}
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
echo "all 1000 directory made!!!"
cd test
for x in `ls`
do
cd $x
mkfile "$x"
cd ..
cd $x
done
