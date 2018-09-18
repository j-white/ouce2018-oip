#!/bin/sh
curl -vvv -u admin:admin \
  --header "Content-Type: application/xml" \
  --request POST \
  --data '<event>
   <uei>uei.opennms.org/internal/authentication/failure</uei>
   <host>localhost</host>
   <parms>
    <parm>
     <parmName><![CDATA[exceptionMessage]]></parmName>
     <value type="string" encoding="text"><![CDATA[I forgot it again]]></value>
    </parm>
    <parm>
     <parmName><![CDATA[exceptionName]]></parmName>
     <value type="string" encoding="text"><![CDATA[oops]]></value>
    </parm>
    <parm>
     <parmName><![CDATA[ip]]></parmName>
     <value type="string" encoding="text"><![CDATA[127.0.0.1]]></value>
    </parm>
    <parm>
     <parmName><![CDATA[user]]></parmName>
     <value type="string" encoding="text"><![CDATA[me]]></value>
    </parm>
   </parms>
  </event>' http://localhost:8980/opennms/rest/events
