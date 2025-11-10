#!/usr/bin/env bash

usrname="Noel_Ok"
read -p "Enter your name: " name

if [[ ${usrname} == ${name} ]]
  then 
   echo "Welcome!"

else read -p "Re-enter name:  " actual
   
fi



