FROM busybox
MAINTAINER <Zhanhao Wong>

ADD ./client /kcp/client
RUN chmod 777 /kcp/client
WORKDIR /kcp

ENTRYPOINT ["./client", "-r", "zhanhao.xyz:4000", "-l", ":8388", "-mode", "fast2"]
CMD ["--key", "12345678"]
EXPOSE 8388
