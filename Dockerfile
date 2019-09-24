FROM scratch

LABEL maintainer "Takahide Nogayama <nogayama+github@gmail.com>"

RUN apt-get install -y apache2

CMD ["/bin/bash"]
