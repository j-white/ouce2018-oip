#!/bin/sh
curl -vvv -u admin:admin \
  --header "Content-Type: application/json" \
  --request POST \
  --data '{
"uei": "uei.opennms.org/internal/authentication/failure",
"host": "localhost",
"parms": [
  {
    "parmName": "exceptionMessage",
    "value": "I forgot it again"
  },
  {
    "parmName": "exceptionName",
    "value": "oops"
  },
  {
    "parmName": "ip",
    "value": "127.0.0.1"
  },
  {
    "parmName": "user",
    "value": "me"
  }
]
}' http://localhost:8980/opennms/rest/events
