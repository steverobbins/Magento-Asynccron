#!/bin/sh

CONCURENTCOUNT=20
CRONSCRIPT=asynccron.php
PHPBIN=`which php`
INSTALLDIR=`echo $0 | sed 's/asynccron\.sh//g'`

while true; do
  SELFCOUNT=`ps aux | grep "$INSTALLDIR$0" | grep -v grep | wc -l`
  if [ "$SELFCOUNT" -gt 2 ]; then
    echo "Async Cron is already running"
    exit
  fi
  RUNCOUNT=`ps aux | grep "$INSTALLDIR$CRONSCRIPT run" | grep -v grep | wc -l`
  echo "$RUNCOUNT/$CONCURENTCOUNT job(s) are running"
  if [ "$RUNCOUNT" -lt $CONCURENTCOUNT ]; then
    JOB=`$PHPBIN $INSTALLDIR$CRONSCRIPT job`
    if [ $JOB ]; then
      echo "Staring job $JOB"
      $PHPBIN $INSTALLDIR$CRONSCRIPT run $JOB &
    else
      echo "No job given"
    fi
  else
    echo "Waiting..."
  fi
  sleep 1
done









exit;
#   prepend the intallation path if not given an absolute path
if [ "$INSTALLDIR" != "" -a "`expr index $CRONSCRIPT /`" != "1" ];then
    if ! ps auxwww | grep "$INSTALLDIR$CRONSCRIPT" | grep -v grep 1>/dev/null 2>/dev/null ; then
        $PHP_BIN $INSTALLDIR$CRONSCRIPT &
    fi
else
    if  ! ps auxwww | grep "$CRONSCRIPT" | grep -v grep | grep -v cron.sh 1>/dev/null 2>/dev/null ; then
        $PHP_BIN $CRONSCRIPT &
    fi
fi
