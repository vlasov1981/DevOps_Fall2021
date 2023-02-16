#!/bin/bash

# check if 3 arguments were given and first is directory
if [ "$#" -ne 3 ] ; then
	echo "Incorrect number of arguments"
	exit 1
else 
	echo "There are 3 argument were given"
fi

BACKUP_DIR = $1
COMPRESSION_ALG = $2
OUTPUT_NAME = $3
#PASSPHRASE = "<secret-phrase>"
LOGFILE = "errors.log"



# check if directory exists
if [ ! -d "$BACKUP_DIR" ]; then
	echo "Error:  is not a directory"# >>$LOGFILE
	exit 1
fi


if ! tar cf${COMPRESSION_ALG:+z}-"${BACKUP_DIR}"|openssl enc -aes256 -salt -pass pass:"$PASSPHRASE"-out "${OUTPUT}"; then
	echo "Error during back up">>"$LOGFILE"
	exit 1
fi

echo "Back up for $BACKUP_DIR complete successfully"



