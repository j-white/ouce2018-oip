#!/bin/sh
$OPENNMS_HOME/bin/send-event.pl --interface 192.168.1.1 uei.opennms.org/internal/discovery/newSuspect
$OPENNMS_HOME/bin/send-event.pl --interface 192.168.1.2 uei.opennms.org/internal/discovery/newSuspect
$OPENNMS_HOME/bin/send-event.pl --interface 192.168.1.3 uei.opennms.org/internal/discovery/newSuspect
