FROM quay.io/aptible/ubuntu:16.04

RUN apt-get update \
  && apt-get install -y openjdk-8-jre wget \
  && rm -rf /var/lib/apt/lists/*

ENV PLUGIN newrelic_mysql_plugin-2.0.0

RUN wget https://github.com/newrelic-platform/newrelic_mysql_java_plugin/raw/master/dist/${PLUGIN}.tar.gz \
  && tar -xvzf ${PLUGIN}.tar.gz \
  && rm ${PLUGIN}.tar.gz

WORKDIR ${PLUGIN}

ADD plugin.sh .

CMD sh plugin.sh


