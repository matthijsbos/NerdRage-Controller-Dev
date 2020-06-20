FROM matthijsbos/nerdrage-dev:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
   && apt-get -y upgrade \
   && apt-get -y install \
         build-essential \
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*
RUN pip3 install -U platformio
ENV DEBIAN_FRONTEND=dialog

