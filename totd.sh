CURTIP=`cat ./curtip`

TIPDIR=~/tips
# To test very locally in current directory, uncomment:
# TIPDIR=tips

# Character 'j' for looping - user input 
CONTINUE='xj'
while [ $CONTINUE = 'xj' ] ; do

    TIPFILE=$TIPDIR/$CURTIP.md

    if [ $NEXT ] ; then clear; fi

    echo "================================================"
    echo " TIP OF TODAY ($TIPFILE) "
    echo "------------------------------------------------"
    cat $TIPFILE
    echo "================================================"

    NUMTIPS=`ls $TIPDIR/*.md | wc -l`

    NEXT=`expr $CURTIP % $NUMTIPS`
    NEXT=`expr $NEXT + 1`

    echo $NEXT > ./curtip

    read -p "Press 'j' for next tip - any other to quit" -n1 ANS
    CONTINUE="x$ANS"

    CURTIP=$NEXT

done # main while loop 

echo


# --------------------------------------------------------
# Example. How should it work:

: <<'END_COMMENT'
$ ./linuxtips.sh
================================================
 TIP OF TODAY (./tips/9.md)
------------------------------------------------
Topic: wc

wc - counts the number of characters and lines.
Example: calculate nr of lines:

$ wc -l file.md
================================================
Press 'j' for next tip - any other to quit

            <<PRESS j>>>

================================================
 TIP OF TODAY (./tips/10.md)
------------------------------------------------
Command: wget

--- To fetch a file from Internet with HTTP use this command.

Example:

$ wget https://www.rfc-editor.org/rfc/rfc19.md
...

           <<<GOES ON as long as user presses key "j">>>>

END_COMMENT
