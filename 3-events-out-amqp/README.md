# Demo

## RabbitMQ

Fire up RabbitMQ via Docker with `./1-start-rabbitmq.sh`

## Consumer

Start the Python consumer `./2-consume-from-rabbitmq.py` 

## Configure and start the AMQP forwarder

```
config:edit org.opennms.features.amqp.eventforwarder
config:property-set connectionUrl amqp://localhost:5672
config:property-set destination amqp:queue:opennms-events
config:property-set processorName default-event-forwarder-processor
config:update
```

```
feature:install opennms-amqp-event-forwarder
```

## Generate events

```
events:stress --uei uei.opennms.org/internal/authentication/failure --eps 10 -s 1
```

## Show the route details

```
camel:route-info forwardEvent
```

