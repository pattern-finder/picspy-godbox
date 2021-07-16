FROM quantumsheep/godbox:2

# Install openCV

#OpenCV dependencies
RUN apt update && apt install build-essential \
  libavcodec-dev libavformat-dev libswscale-dev \
  python3-dev python3-numpy \
  libtbb2 libtbb-dev libdc1394-22-dev -y

# Clone and build openCV locally to have the latest version
RUN git clone https://github.com/opencv/opencv.git /home/opencv
RUN mkdir /home/opencv/build 
WORKDIR /home/opencv/build

# Compile and install
RUN cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D OPENCV_GENERATE_PKGCONFIG=ON ..
RUN make 
RUN make install

# Python dependencies 
RUN apt install python3 python3-pip -y
RUN pip3 install numpy

WORKDIR /

RUN rm -rf /home/opencv


CMD godbox
