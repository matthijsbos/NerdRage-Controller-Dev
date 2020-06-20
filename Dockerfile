FROM matthijsbos/nerdrage-dev:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN pip3 install -U platformio
ENV DEBIAN_FRONTEND=dialog

