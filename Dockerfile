############################################################
# Dockerfile to run TEAMCITY
# Based on Ubuntu Image
# Maintainer: Eftakhairul Islam <eftakhairul@gmail.com>
############################################################

# Base Image Oracle Java 7
# https://github.com/dockerfile/java/tree/master/oracle-java7
FROM dockerfile/java:oracle-java7

# Set the file maintainer (your name - the file's author)
MAINTAINER Eftakhairul Islam  <eftakhairul@gmail.com>


#Teamcity data path
VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

# Download and install TeamCity to /opt
#http://download-cf.jetbrains.com/teamcity/TeamCity-9.0.4.tar.gz
ENV TEAMCITY_PACKAGE TeamCity-9.0.4.tar.gz
ENV TEAMCITY_DOWNLOAD http://download.jetbrains.com/teamcity
RUN wget $TEAMCITY_DOWNLOAD/$TEAMCITY_PACKAGE && \
    tar zxf $TEAMCITY_PACKAGE -C /opt && \
    rm -rf $TEAMCITY_PACKAGE

EXPOSE 8111
CMD ["/opt/TeamCity/bin/teamcity-server.sh", "run"]