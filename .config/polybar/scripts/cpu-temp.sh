#!/bin/sh

temp="$(sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}')"

echo " $temp"