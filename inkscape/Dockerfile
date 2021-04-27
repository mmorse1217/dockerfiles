FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y inkscape x11-apps ttf-dejavu --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
    
CMD ["inkscape"]
