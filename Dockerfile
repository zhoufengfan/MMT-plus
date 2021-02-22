FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime

RUN apt-get update -qq && \
    apt-get install -y git vim wget curl libgtk2.0-dev

# WORKDIR /root
# RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# RUN bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda && \
#     rm -rf Miniconda3-latest-Linux-x86_64.sh
