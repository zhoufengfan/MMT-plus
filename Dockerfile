# The Python interpreter is in a conda env.
FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel

RUN apt-get update -qq && \
    apt-get install -y git vim wget curl libgtk2.0-dev

RUN /bin/bash -c 'source $HOME/.bashrc'
COPY requirements.txt /workspace
RUN pip --no-cache-dir install -r /workspace/requirements.txt