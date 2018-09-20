#!/bin/sh
PROTOBUF="/home/jesse/bin/protobuf-3.5.1/build"
LD_LIBRARY_PATH=$PROTOBUF $PROTOBUF/protoc -I=. --python_out=. collectionset.proto 
LD_LIBRARY_PATH=$PROTOBUF $PROTOBUF/protoc -I=. --python_out=. opennms-kafka-producer.proto
