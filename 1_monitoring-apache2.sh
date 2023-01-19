#!/bin/bash

echo "########################################"
date
ls /var/run/apache2/apache2.pid

if [ -f /var/run/apache2/apache2.pid ]
then
        echo "Apache2 process is running."
else
        echo "Apache2 process is NOT running."
        echo "Starting the process."
        sudo systemctl start apache2
        if [ -f /var/run/apache2/apache2.pid ]
        then
                echo "Process started successfully."
        else
                echo "Process starting failed, contact admin."
        fi
fi
echo "#########################################"
