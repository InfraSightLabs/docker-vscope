# vScope Server - Release version
#

FROM ubuntu:16.04
MAINTAINER Konrad Eriksson "konrad.eriksson@infrasightlabs.com"

RUN apt update

# Install wget to enable fetching signing key
RUN apt -y install wget unzip openjdk-8-jre-headless

ADD http://vscope.net/dist/release/latest-server-linux.php /vscope.zip

RUN unzip /vscope.zip -d /opt &&\
    rm /vscope.zip

RUN sed -i '/MaxPermSize/d' /opt/vScopeServer/vScopeServer.ini

RUN sed -i 's|osgi.instance.area.*|osgi.instance.area=/data|g' /opt/vScopeServer/configuration/config.ini
RUN sed -i 's|osgi.configuration.area.*|osgi.configuration.area=/data/configuration|g' /opt/vScopeServer/configuration/config.ini

# vScope Web UI port
EXPOSE 80

# vScope OSGi console
EXPOSE 4444

## Entrypoint
# ENTRYPOINT ["/var/lib/vscopeserver/vscopeserver"]
ENTRYPOINT ["/opt/vScopeServer/vScopeServer"]
