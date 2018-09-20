Compile proto

protoc -I=$SRC_DIR --python_out=$DST_DIR $SRC_DIR/addressbook.proto

```
echo 'org.opennms.rrd.usetcp=true
org.opennms.rrd.tcp.host=127.0.0.1
org.opennms.rrd.tcp.port=2424' > $OPENNMS_HOME/etc/opennms.properties.d/rrd-tcp.properties
```
