FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories && \
    apk update && \
    apk add --no-cache nodejs npm
RUN npm config set registry=http://registry.npm.taobao.org -g
RUN npm install -g gitbook-cli
RUN cd /usr/local/lib/node_modules/gitbook-cli/node_modules/npm && \
    npm install graceful-fs@4.2.0 && \
    cd / && \
    gitbook install
WORKDIR /book
COPY init /init
CMD ["/init"]
