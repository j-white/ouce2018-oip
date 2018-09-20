#!/bin/sh
curl -s -u admin:admin -H "Accept: application/json" \
  "http://localhost:8980/opennms/api/v2/nodes?_s=node.label==test*" \
  | jq ".node[] | {label: .label, id: .id}"
