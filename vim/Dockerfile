FROM ubuntu:18.04 as vim

# update and install all packages
RUN apt-get update

RUN apt-get upgrade -y

# need this for fast fuzzy file seraching with vim
RUN apt install -y sudo wget silversearcher-ag git curl

# Clone environment configuration
RUN git clone https://github.com/mmorse1217/terraform.git --recursive
WORKDIR terraform

# Symlink dotfiles 
RUN bash dotfiles/setup.sh

# build vim with dev tools
ENV VIM_DEV=1 DEBIAN_FRONTEND=noninteractive \
    PATH="~/miniconda3/bin:${PATH}"  \
    TERM=xterm-256color 

# Setup python vim and autojump (need python for its language server for now)
RUN bash programs/python.sh

RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime  && \
sudo apt-get install -y tzdata && \
dpkg-reconfigure --frontend noninteractive tzdata   
RUN bash programs/vim.sh
WORKDIR /root
#RUN bash programs/autojump.sh
CMD ["/bin/bash"]
