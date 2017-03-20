FROM ibmjava:sfj-alpine

ARG MULE_VERSION=3.8.1
ENV MULE_HOME=/opt/mule-standalone-${MULE_VERSION} \
    MAVEN_VERSION=3.3.9 \
    MAVEN_HOME=/opt/maven

ADD https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/${MULE_VERSION}/mule-standalone-${MULE_VERSION}.tar.gz \
    http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    /tmp/

RUN tar -xz -C /opt -f /tmp/mule-standalone-${MULE_VERSION}.tar.gz && \
    tar -xz -C /opt -f /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    rm /tmp/*.tar.gz
