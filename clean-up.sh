
#!/bin/bash

#Rangement des fichiers
CURRENT_DIRECTORY=`dirname $0`
echo current : $CURRENT_DIRECTORY

LIST=`find $1 -type f`

rm -rf /clean-up

for ITEM in $LIST
do
	if file "$ITEM" | grep -qE 'image data'
	then
		mkdir -p clean-up/images
		cp $ITEM $CURRENT_DIRECTORY/clean-up/images
	elif file "$ITEM" | grep -qE 'html'
	then
		mkdir -p clean-up/html
		cp $ITEM $CURRENT_DIRECTORY/clean-up/html
	elif file "$ITEM" | grep -qE 'Media'
	then
		mkdir -p clean-up/videos
		cp $ITEM $CURRENT_DIRECTORY/clean-up/videos
	elif file "$ITEM" | grep -qE 'ASCII'
	then
		mkdir -p clean-up/text
		cp $ITEM $CURRENT_DIRECTORY/clean-up/text
	else
		mkdir -p clean-up/divers
		cp $ITEM $CURRENT_DIRECTORY/clean-up/divers
	fi
done

rm -rf $1
