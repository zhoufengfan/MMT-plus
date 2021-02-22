FROM sitonholy/cuda11.1-cudnn8-novnc-jupyter-tensorboard

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
