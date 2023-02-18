#!/bin/bash

# check if 3 arguments were given
if [ "$#" -ne 3 ] 
then
	echo "Incorrect number of arguments was given"
	echo "Please provide 3 arguments"
	exit 1
fi

# redirect all output to /dev/null except for errors, that goes to error.log
exec 1>/dev/null
exec 2>error.log

#echo "The current date is:"
echo "Back up date/time is"; date

# Given arguments
BACKUP_DIR=$1
COMPRESSION=$2
OUTPUT_FILE=$3

# The backup archive using compression algorithm and send it to output file
tar cf - "$BACKUP_DIR" | $COMPRESSION > "$OUTPUT_FILE"

openssl enc -aes-256-cbc -salt -in "$OUTPUT_FILE" -out "${OUTPUT_FILE}.enc"

# Remove the unencrypted backup archive
rm "$OUTPUT_FILE"


