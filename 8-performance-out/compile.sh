#!/bin/sh
PROTOBUF="/home/jesse/bin/protobuf-2.6.1/src/.libs"
LD_LIBRARY_PATH=$PROTOBUF $PROTOBUF/protoc -I=. --python_out=. PerformanceData_Horizon_23.0.0.proto
cp PerformanceData_Horizon_23/0/0_pb2.py perf_pb2.py
