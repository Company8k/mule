FROM ibmjava:sfj-alpine

ARG MULE_VERSION=3.8.1
ENV MULE_HOME=/opt/mule-standalone-${MULE_VERSION} \

ADD https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/${MULE_VERSION}/mule-standalone-${MULE_VERSION}.tar.gz
    /tmp/

RUN tar -xz -C /opt -f /tmp/mule-standalone-${MULE_VERSION}.tar.gz && \
    rm /tmp/*.tar.gz
