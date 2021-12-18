#!/bin/bash -x 

read -p "enter hight" hight
read -p "enter base"  base

area=$(awk "BEGIN {print (1/2) * $base * $hight}")

echo "area of triangle" $area
