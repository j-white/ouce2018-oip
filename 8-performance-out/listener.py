#!/usr/bin/env python
import perf_pb2
from twisted.internet import reactor, protocol

class PerformanceDataReadingsProtocol(protocol.Protocol):

    def __init__(self):
        self.data = ""

    def dataReceived(self, data):
        self.data += data

    def connectionLost(self, reason=protocol.connectionDone):
        performanceDataReadings = perf_pb2.PerformanceDataReadings()
        performanceDataReadings.ParseFromString(self.data)
        print("Got performance data: %s" % performanceDataReadings)

def main():
    """This runs the protocol on port 8000"""
    factory = protocol.ServerFactory()
    factory.protocol = PerformanceDataReadingsProtocol
    reactor.listenTCP(2424, factory)
    print("Listening...")
    reactor.run()

if __name__ == '__main__':
    main()
