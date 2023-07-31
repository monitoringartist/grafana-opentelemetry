#!/bin/bash -e

# overriding entrypoint, because syslog logging can't be configured in other way
cp /run.sh /tmp
sed -i 's/cfg:default.log.mode="console"//g' /tmp/run.sh
/tmp/run.sh
