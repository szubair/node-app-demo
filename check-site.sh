#!/bin/bash
#check the http status code
STATUS=`curl -is --connect-timeout 3 http://13.201.164.185:81/ | head -1 | awk '{print $2}'`
if test $STATUS -eq 200; then
  echo "We're Good - $STATUS OK!"
else
  echo "ERROR: $STATUS"
exit 1
fi
