FROM eightk/mule-ce

ENV MAVEN_VERSION=3.3.9
ADD http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz /tmp/

RUN tar -xz -C /opt -f /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz && rm /tmp/*.tar.gz
