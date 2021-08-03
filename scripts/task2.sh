#!/usr/bin/env bash

mkdir -p ../tests/task2 && cd ../tests/task2

for i in {1..10}
do
   filename="random_text_$i.txt"
   touch $filename
   tr -dc A-Za-z0-9 </dev/urandom | head -c 1000 > $filename
done
