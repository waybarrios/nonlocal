FROM zzhikun/non_local_net:v1.0
MAINTAINER Human Sensing lab  <wbarrios@andrew.cmu.edu>

RUN git clone --recursive https://github.com/waybarrios/video_nonlocal_net_caffe2.git
RUN mkdir /video_nonlocal_net_caffe2/build 

RUN rm -rf /usr/lib/x86_64-linux-gnu/libcuda.so
RUN ln -s /usr/lib/x86_64-linux-gnu/libcuda.so.410.72  /usr/lib/x86_64-linux-gnu/libcuda.so
RUN ldconfig
RUN cd /video_nonlocal_net_caffe2 &&  python setup_caffe2.py install

#code
RUN mkdir -p /code/nonlocal
VOLUME  /code/nonlocal

#data

RUN mkdir -p /data
VOLUME /data

RUN mkdir -p /model
VOLUME /model

RUN ln -s /code/nonlocal/ /home/project/video-nonlocal-net
WORKDIR /code/nonlocal

