#!/usr/bin/env bash

array=("Mercy" "James" "Lorna" "Rita")

echo ${array[1]}
echo "${array[1]} was second in class"

echo ${array[-1]}
echo "${array[-1]} was last in class"

echo ${#array[@]}
echo "I have ${array[@] students in my class!"

echo ${array[@]:1:4}
