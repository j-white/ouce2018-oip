# Demo

Enable the Syslog northbounder by setting the enabled flag to `true` in `$OPENNMS_HOME/etc/syslog-northbounder-configuration.xml`

Restart OpenNMS.

Run a tcpdump session:
```
sudo tcpdump -X -ni lo port 514
```

Use the event stresser to generate a bunch of alarms:
```
events:stress --sync --threads 10 --eps 100 --uei uei.opennms.org/alarms/trigger --jexl "eb.addParm('node', math:floor(math:random() * 100))"
```
