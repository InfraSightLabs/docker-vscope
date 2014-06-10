# vScope Server - Release version
#

FROM ubuntu
MAINTAINER Konrad Eriksson "konrad.eriksson@infrasightlabs.com"

#RUN apt-get update
#RUN apt-get -y dist-upgrade

# Install wget to enable fetching signing key
RUN apt-get -y install wget

# Install vScope signing key
RUN wget -O - http://debian.vscope.net/infrasightlabs.com.gpg.key | apt-key add -

# Add vScope repo as APT sources.list file
RUN echo 'deb http://debian.vscope.net beta main' > /etc/apt/sources.list.d/vscope.list

# Fetch files in newly added repo
RUN apt-get update

# Install vScope Server package (requires headless JVM that also gets installed)
RUN apt-get -y install vscopeserver

# vScope Web UI port
EXPOSE 80

# vScope OSGi console
EXPOSE 4444

## Entrypoint
ENTRYPOINT ["/var/lib/vscopeserver/vscopeserver"]
