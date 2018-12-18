#!/bin/bash

#Rangement des fichiers

LIST=`find $1 -print`

for ITEM in $LIST
do
	if [ "`file $ITEM`" = "`$ITEM`: empty" ]
	then
		if [ file $ITEM | grep 'image data' ]
		then
			echo "prout"
		else
			echo "prout"
		fi
	else
		echo $ITEM": empty"
	fi
done
