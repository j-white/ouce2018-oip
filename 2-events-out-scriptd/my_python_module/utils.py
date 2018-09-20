import urllib2
import json

class EventForwarder:
  def __init__(self, bsf):
    self.event = bsf.lookupBean("event")
    self.log = bsf.lookupBean("log")

  def post(self):
    event_as_json = json.dumps({'uei':self.event.uei, 'logmsg':self.event.logmsg.content})
    req = urllib2.Request("http://localhost:8080/events", event_as_json, {'Content-Type': 'application/json'})
    f = urllib2.urlopen(req)
    response = f.read()
    self.log.debug("Response: " + response)
    f.close()
