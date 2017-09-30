#!/bin/bash

outdevice=$(audiodevice output)
regex=USB.+
if [[ $outdevice =~ $regex ]]
then
	echo 'A'
	audiodevice output internal
else
	echo 'B'
	audiodevice output 'USB Audio CODEC '
fi