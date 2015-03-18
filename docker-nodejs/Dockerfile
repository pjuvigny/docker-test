FROM    centos:centos6

ENV NODE_ENV dockerized

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

RUN     yum install -y tar

# Get the sources
ADD     http://ic.indus.capgemini.mobi/NodeTest/NodeTest-latest.tar ./

RUN     mkdir /src
# Bundle app source
RUN     tar xvf NodeTest-latest.tar -C /src
# Install app dependencies
RUN cd /src/NodeTest; npm install


EXPOSE  8000
CMD ["node", "/src/NodeTest/app.js"]