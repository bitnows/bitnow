# 1. use ubuntu 16.04
FROM       ubuntu:16.04
MAINTAINER bitnow.team@gmail.com
RUN             apt-get -y update
RUN             apt-get -y install curl
RUN             apt-get -y install software-properties-common

# 2. bitnow release lastest download
RUN             mkdir /root/bitnow && cd /root/bitnow && curl -L https://github.com/bitnows/bitnow/releases/download/1.3.0.1/bitnow-1.3.0.1-arm-linux-gnu-ubuntu.16.0.4.tar.gz$
RUN             mkdir /root/.bitnow && cd /root/bitnow &&  mv bitnow.conf /root/.bitnow/ && chmod 755 bitnow*
RUN             cd /root/bitnow && chmod 755 bitnow*


# 3. install dependancy
RUN             apt-get -y install build-essential
RUN             apt-get -y install libtool autotools-dev autoconf
RUN             apt-get -y install libssl-dev libboost-all-dev
RUN             add-apt-repository -y ppa:bitcoin/bitcoin
RUN             apt-get -y update
RUN             apt-get install -y libdb4.8-dev libdb4.8++-dev
RUN             apt-get install -y libssl1.0-dev
RUN             apt-get install -y libminiupnpc-dev
RUN             apt-get install -y libzmq5

# 3. run bitnow daemon
RUN             cd /root/bitnow && ./bitnow -txindex -daemon
