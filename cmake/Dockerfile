FROM ubuntu:18.04 
# Install the latest version of cmake
RUN apt purge -y --auto-remove cmake && \
    wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add - && \
    apt update && \
    apt install -y  software-properties-common libeigen3-dev && \
    apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main' &&\
    apt update && \
    apt install -y cmake && \
    apt-get purge -y curl && \
    apt-get autoremove -y && \
    apt-get clean 
