Week 1 Programming assignment
Backup Script

In this task you need to create a backup script. The script should accept three parameters:

- the directory to backup;
- the compression algorithm to use (none, gzip, bzip, etc; see tar for details);
- the output file name.

The resulting backup archive should be encrypted (see openssl enc for details).
All output except errors should be suspended, all errors should be written to the error.log file instead of stderr.


The project will be evaluated according to the functional requirements in the task description. Individual rewards will be given for beautiful solutions.

Please specify the URL to your project repository
_________________________________________________________________

Please see backup_script.sh
To use provided script (backup_script.sh), be sure that it is executable with chmod +x backup.sh. Then, you can run it with the three required parameters:

./backup_script.sh /path/to/directory gzip backup.tar

This will create a gzip-compressed backup archive of the /path/to/directory directory, encrypt it with AES-256-CBC encryption, and save the encrypted archive as 
backup.tar.enc. Any errors that occur during the backup process will be logged to the error.log file.
