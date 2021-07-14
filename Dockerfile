FROM quantumsheep/godbox:2

RUN apt-get update && apt install python3-opencv -y 
RUN apt-get install sudo -y
RUN sudo apt install python3-pip -y
RUN pip3 install --upgrade setuptools pip
RUN pip install -U numpy 
RUN pip install opencv-contrib-python
RUN python3 -m pip install Pillow
RUN apt-get update && apt-get upgrade -y

CMD godbox