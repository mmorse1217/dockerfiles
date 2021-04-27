#!~/bin/bash

#XSOCK=/tmp/.X11-unix
#XAUTH=/tmp/.docker.xauth
#xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
#docker run -ti \
#    -v $XSOCK:$XSOCK \
#    -v $XAUTH:$XAUTH \
#    -e XAUTHORITY=$XAUTH \
#    -e DISPLAY \
#    -v `pwd`:/images \
#    paraview

docker run -it --rm  \
    -p 8080:8080 \
    -v `pwd`:/data \
    -v `pwd`:/pv \
    kitware/paraview:pv-v5.8.0-osmesa-py3 \
    /opt/paraview/bin/pvpython /opt/paraview/share/paraview-5.8/web/visualizer/server/pvw-visualizer.py \
    --content /opt/paraview/share/paraview-5.8/web/visualizer/www/  \
    --proxies /pv/filters.json \
    --data /  \
    --port 8080



#export PORT=8080
#export DATA=`pwd`
#export DEPLOY=`pwd`
#export SERVER_NAME=localhost
#export PROTOCOL=wss
#
#sudo docker run --rm                     \
#    -p 0.0.0.0:${PORT}:80                 \
#    -v ${DATA}:/data                       \
#    -v ${DEPLOY}:/pvw                       \
#    -e "SERVER_NAME=${SERVER_NAME}"          \
#    -e "PROTOCOL=${PROTOCOL}"                 \
#    -e EXTRA_PVPYTHON_ARGS="-dr,--mesa-swr"    \
#    -ti kitware/paraview:pvw-v5.8.0-osmesa-py3
