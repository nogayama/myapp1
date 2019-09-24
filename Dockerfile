FROM ubuntu:latest

LABEL maintainer "Takahide Nogayama <nogayama+github@gmail.com>"

RUN apt update \
 && apt install -y apache2 nginx

CMD ["/bin/bash"]
