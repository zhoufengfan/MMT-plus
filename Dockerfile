FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime

RUN apt-get update -qq && \
    apt-get install -y git vim libgtk2.0-dev

WORKDIR /root
RUN git clone https://github.com/yxgeee/MMT-plus.git
WORKDIR /root/MMT-plus
RUN python setup.py develop
WORKDIR /root
RUN git clone https://github.com/NVIDIA/apex.git
WORKDIR /root/apex
RUN python setup.py install --cuda_ext --cpp_ext
