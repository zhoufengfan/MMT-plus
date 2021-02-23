# The Python interpreter is in a conda env.
FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel

RUN apt-get update -qq && \
    apt-get install -y git vim wget curl libgtk2.0-dev

RUN /bin/bash -c 'source $HOME/.bashrc'
RUN conda create -n mmt-plus python=3.8
RUN conda init bash
RUN /bin/bash -c 'source $HOME/.bashrc'
RUN /bin/bash -c 'source activate mmt-plus'
