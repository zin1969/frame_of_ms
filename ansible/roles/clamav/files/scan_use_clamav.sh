#!/bin/bash

#PATH=/usr/bin:/bin
#TITLE=""
#TO="To: root\n"
#SENDMAIL=/usr/sbin/sendmail
#SENDMAIL=echo

# update definition
# freshclam > /dev/null

# full scan (multi-thread)
#clamdscan --multiscan --verbose --move=/var/log/clamav/virus /

# full scan (single-thread)
/usr/bin/clamdscan --verbose --move=/var/log/clamav /

# report
#if [ $? = 0 ]; then
#    echo "virus not found"
#    TITLE="Subject: ClamAV scan OK"
#    echo -e $TO$TITLE | cat - /var/log/clamav/clamav.log | $SENDMAIL -t
#elif [ $? = 1 ]; then
#    echo "virus found"
#    TITLE="Subject: ClamAV scan NG"
#    echo -e $TO$TITLE | cat - /var/log/clamav/clamav.log | $SENDMAIL -t
#else
#    echo "error occured"
#    TITLE="Subject: ClamAV scan Error"
#    echo -e $TO$TITLE | cat - /var/log/clamav/clamav.log | $SENDMAIL -t
#fi
