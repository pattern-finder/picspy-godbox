FROM quantumsheep/godbox:2

# Install openCV

#OpenCV dependencies
RUN apt update && apt install build-essential \
  libavcodec-dev libavformat-dev libswscale-dev \
  libtbb2 libtbb-dev libdc1394-22-dev -y

RUN /usr/local/python-3.9.6/bin/pip3 install numpy 
RUN /usr/local/python-3.9.6/bin/pip3 install pillow
# Clone and build openCV locally to have the latest version
RUN git clone https://github.com/opencv/opencv.git /home/opencv
RUN mkdir /home/opencv/build 
WORKDIR /home/opencv/build

# Compile and install
RUN cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D OPENCV_GENERATE_PKGCONFIG=ON \
  -D BUILD_opencv_python3=yes \
  -D PYTHON3_EXECUTABLE=/usr/local/python-3.9.6/bin/python3 \
  -DPYTHON3_INCLUDE_DIR=$(/usr/local/python-3.9.6/bin/python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
  -DPYTHON3_PACKAGES_PATH=$(/usr/local/python-3.9.6/bin/python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") \
  ..
RUN make 
RUN make install


WORKDIR /

RUN rm -rf /home/opencv


CMD godbox
