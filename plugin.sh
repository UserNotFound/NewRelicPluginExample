#!/bin/bash
set -e 
set -x

sed "s/YOUR_LICENSE_KEY_HERE/${NEWRELIC_KEY}/" \
  config/newrelic.template.json > config/newrelic.json

sed "s/localhost/${DATABASE_URL}/gI; s/USER_NAME_HERE/${USER:-aptible-nossl}/; s/USER_PASSWD_HERE/${PASSWORD}/" \
  config/plugin.template.json > config/plugin.json

exec java -Xmx128m -jar plugin.jar