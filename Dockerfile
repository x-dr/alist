FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates  wget && \
    wget -O alist.tar.gz  https://github.com/Xhofe/alist/releases/download/v2.1.2/alist-linux-amd64.tar.gz  && \
    tar -zxvf alist.tar.gz  && \
    mv alist-linux-amd64 alist && \
    chmod +x ./alist && \
    rm -rf /var/cache/apk/*

WORKDIR /app
ADD . /app/

CMD ./alist
