Compile proto

protoc -I=$SRC_DIR --python_out=$DST_DIR $SRC_DIR/addressbook.proto
