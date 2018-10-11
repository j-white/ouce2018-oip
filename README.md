# OpenNMS Integration Patterns - OUCE 2018

Slides are available [here](https://github.com/j-white/ouce2018-oip/blob/master/ouce2018-Jesse_White-OpenNMS_Integration_Patterns.pdf).

## Initial setup

The scripts in this project were tested with a build of Horizon 23.0.0-SNAPSHOT (at commit 7184e611e315a5df8d9a9c1e5089a252adb122e4).

The demo was performed with a clean database only containing a single node with FS/FID 'NODES:localhost' with an IP interface of 127.0.0.1.

### Before demo

* Copy jython .jar
* Enable syslog northbounder
* Enable TCP output
* Patch provision.pl
