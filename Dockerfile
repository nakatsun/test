FROM ubuntu:focal

LABEL maintainer K

RUN apt-get update \
 && apt-get install -y \
      tzdata
# timezone setting
ENV TZ=Asia/Tokyo 

RUN apt-get install -y \
      libgstreamer1.0-0 \
      gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
      gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
      gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools \
      iperf3


WORKDIR /var/work
