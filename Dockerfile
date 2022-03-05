FROM ubuntu:latest

WORKDIR /app
ADD . /app/

RUN apt-get update && \
    apt-get install -y wget && \
    wget -O alist.tar.gz  https://github.com/Xhofe/alist/releases/download/v2.1.2/alist-linux-amd64.tar.gz  && \
    tar -zxvf alist.tar.gz  && \
    rm -rf alist.tar.gz && \
    mv alist-linux-amd64 alist && \
    chmod +x ./alist && \
    rm -rf /var/lib/apt/lists/* 





CMD [ "./alist" ]
# ENTRYPOINT [ "./docker-entrypoint.sh" ]

