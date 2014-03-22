FROM ubuntu
RUN apt-get update
RUN apt-get install -y wget tar libxext-dev perl perl-modules make build-essential
RUN wget http://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz ; \
    tar zxf ./UnixBench5.1.3.tgz

RUN cd UnixBench ; \ 
    make clean ; \
    make
WORKDIR UnixBench/
ENTRYPOINT ./Run
