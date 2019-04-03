#!/bin/bash

function root
{
	if [[ $EUID -ne 0 ]]
	then
		echo 'This script must be run as root'
		exit 1
	else
		__run__
	fi
}
function options
{

	echo
	echo "Please choose the mode you wish your chipset to be set on"
	echo "1.Monitor mode"
	echo "2.Managed mode"
	echo -n "Mode : "
	read mode

	if [ $mode -eq 1 ]
	  then
			ifconfig $1 down
			iwconfig $1 mode monitor
			ifconfig $1 up
	  elif [ $mode -eq 2 ]
	     then
			 ifconfig $1 down
			 iwconfig $1 mode managed
			 ifconfig $1 up
	     fi
}

function interface
{
	echo "Choose the interface you wish to manage"
	echo -n "Interface : "
	read interface
	echo
	echo "Your inteface is: $interface"
	echo

}

function __run__
{
		interface
		options $interface
}
root
