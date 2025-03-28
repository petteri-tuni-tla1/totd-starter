# Flashcards based tip of the day script to Linux server

Getting started version of the tip of the day utility to command line.


## Server configuration suggestion

Add this to /etc/skel/.bashrc or manually to users who want to use it.

````
# Now the totd.sh is available always without full path
export PATH=$PATH:/opt/totd25
# To enable the TOTD functionality, add .totd file to your home directory
if [ -f .totd ]; then
        /opt/totd25/totd.sh
fi
````


