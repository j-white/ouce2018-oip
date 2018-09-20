
# Demo

## Start Kafka

```
./1-start-kafka.sh
```

## Configure and enable the Kafka producer

```
config:edit org.opennms.features.kafka.producer.client
config:property-set bootstrap.servers 127.0.0.1:9092
config:update

config:edit org.opennms.features.kafka.producer
config:property-set forward.metrics true
config:update

feature:install opennms-kafka-producer
```

## Wait until all 4 topics are created

```
./2-list-topics.sh
```

##  Create/active the virtualenv

```
virtualenv kafka-venv
source kafka-venv/bin/activate
pip install protobuf
pip install confluent_kafka
```

## Start the consumer

```
python consumer.py
```

