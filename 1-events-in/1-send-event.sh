#!/bin/sh
if [ ! -e "$OPENNMS_HOME/bin/send-event.pl" ]; then
  echo "Cannot find send-event.pl!"
  exit 1
fi

$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/internal/authentication/failure \
  -v \
  -p 'user me' \
  -p 'ip 127.0.0.1' \
  -p 'exceptionName oops' \
  -p 'exceptionMessage I forgot it again'
