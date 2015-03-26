FROM    centos:centos6

ENV NODE_ENV dockerized

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm
# Install tar
RUN     yum install -y tar

# Get the sources
ADD     http://ic.indus.capgemini.mobi/NodeTest/NodeTest-latest.tar ./

RUN     mkdir /src
# Extract sources
RUN     tar xvf NodeTest-latest.tar -C /src
# Install app dependencies (production only)
RUN cd /src/NodeTest; npm install --production

# Expose app port
EXPOSE  8000
# Launch nodejs
CMD ["node", "/src/NodeTest/app.js"]