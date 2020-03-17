FROM licsber/opencv:build-install

LABEL maintainer="Licsber <Licsber@njit.edu.cn>"

WORKDIR /root

RUN git clone https://github.com/ShiqiYu/libfacedetection.git

RUN cd libfacedetection && mkdir build && cd build && cmake .. && \
    cat /proc/cpuinfo | grep "processor" | wc -l | xargs make -j
