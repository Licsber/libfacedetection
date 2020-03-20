FROM licsber/opencv:build-install

LABEL maintainer="Licsber <Licsber@njit.edu.cn>"

WORKDIR /root

RUN git clone https://github.com/ShiqiYu/libfacedetection.git && \
    cd libfacedetection && mkdir build && cd build && \
    cmake .. && make && make install && \
    cd ../.. && rm -rf libfacedetection
