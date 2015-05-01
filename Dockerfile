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


VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

# Update the default application repository sources list
RUN apt-get update

# Install Memcached
RUN apt-get install -y 
