FROM ubuntu:18.04
RUN  dpkg --add-architecture i915 && \
apt-get update &&\
apt-get install -y --no-install-recommends \
libxau6 \
libxau6:i915 \
libxdmcp6 \
libxdmcp6:i915 \
libxcb1 \
libxcb1:i915 \
libxext6 \
libxext6:i915 \
libx11-6 \
libx11-6:i915 &&\
rm -rf /var/lib/apt/lists/*
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y \
    paraview \
    x11-apps \
    libglvnd0 \
    libglvnd0:i915 \
    libgl1  \
    libgl1:i915  \
    libglx0 \
    libglx0:i915\
    libegl1 \
    libegl1:i915 \
    libgles2 \
    libgles2:i915 \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
    
CMD ["paraview"]
