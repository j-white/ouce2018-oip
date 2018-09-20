from confluent_kafka import Consumer, KafkaError
from collectionset_pb2 import CollectionSet
from opennms_kafka_producer_pb2 import Alarm, Node, Event

c = Consumer({
    'bootstrap.servers': 'localhost',
    'group.id': 'python-consumer',
    'default.topic.config': {
        'auto.offset.reset': 'smallest'
    }
})
c.subscribe(['alarms', 'events', 'metrics', 'nodes'])

while True:
    msg = c.poll(1.0)

    if msg is None:
        continue
    if msg.error():
        if msg.error().code() == KafkaError._PARTITION_EOF:
            continue
        else:
            print(msg.error())
            break

    if 'alarms' == msg.topic():
        print("Got alarm at key: %s" % msg.key())
        alarm = Alarm()
        alarm.ParseFromString(msg.value())
        print("Alarm: %s" % alarm)
    elif 'events' == msg.topic():
        print("Got event at key: %s" % msg.key())
        event = Event()
        event.ParseFromString(msg.value())
        print("Event: %s" % event)
    elif 'metrics' == msg.topic():
        print("Got metrics at key: %s" % msg.key())
        collectionSet = CollectionSet()
        collectionSet.ParseFromString(msg.value())
        print("Metrics: %s" % collectionSet)
    elif 'nodes' == msg.topic():
        print("Got node at key: %s" % msg.key())
        node = Node()
        node.ParseFromString(msg.value())
        print("Node: %s" % node)
    else:
        print("Received message on unknown topic: %s" % msg.topic())

c.close()
