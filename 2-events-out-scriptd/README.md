# Demo

## Add Jython to the classpath

wget http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar -O jython-standalone-2.7.0.jar

## Copy over the configuration

cp -R scriptd-configuration.xml my_python_module $OPENNMS_HOME/etc/

## Restart scriptd

$OPENNMS_HOME/bin/send-event.pl -p "daemonName scriptd" uei.opennms.org/internal/reloadDaemonConfig

## Fire up a web server on port 8080

python -m SimpleHTTPServer 8080

## Trigger an event

./1-send-event.sh

