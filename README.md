# Bash script to check if apache2 is running.

The completed script prints the date.
Then checks and prints the file location if it is found.
The if [ -f /var/run/apache2/apache2.pid ] statement check if the file exists, if the file does exist then it prints “Apache2 process is running.”
If the file does not exist then the apache 2 process must not be running so the script will print “Apache2 process is NOT running.” “Starting the process.”
The sudo systemctl start apache2 command will start the apache2 process which should then create the apache2.pid file. 
The if [ -f /var/run/apache2/apache2.pid ] then runs as a nested command, again checking if it can find the apache2.pid file. If the file is found then the process has started successfully. If the file is not found then the process didn’t start successfully so there is probably a bigger issue so contact the admin.
