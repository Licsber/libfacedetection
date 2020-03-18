FROM licsber/opencv:build-install

LABEL maintainer="Licsber <Licsber@njit.edu.cn>"

WORKDIR /root

RUN git clone https://github.com/ShiqiYu/libfacedetection.git && \
    cd libfacedetection && mkdir build && cd build && \
    cmake .. -DCMAKE_PREFIX_INSTALL=install && \
    cmake --build . --config Release -DDEMO=OFF && \
    cat /proc/cpuinfo | grep "processor" | wc -l | xargs \
    cmake --build . --config Release --target install -- -j && \
    cd ../.. && rm -rf libfacedetection
