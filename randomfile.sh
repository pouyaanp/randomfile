#!/bin/bash
mkdir test
cd test
for i in {1..1001}
do
echo `mkdir $RANDOM`
done
echo "all 1000 directory made!!!"