#!/bin/sh
docker run -d -v $(pwd)/enabled_plugins:/etc/rabbitmq/enabled_plugins --name rabbit -p 5672:5672 -p 15672:15672 rabbitmq:3-management
