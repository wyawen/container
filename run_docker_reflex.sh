sudo docker run -it --net=host --privileged -v /dev:/dev -v /lib/modules/`uname -r`:/lib/modules/`uname -r` yawenw/reflex
