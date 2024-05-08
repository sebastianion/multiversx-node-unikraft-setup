FROM scratch

WORKDIR /
COPY lib/ /lib
COPY lib64/ /lib64
COPY libwasmer_linux_amd64.so /lib/libwasmer_linux_amd64.so
COPY libvmexeccapi.so /lib/libvmexeccapi.so
COPY node/ /

WORKDIR /
EXPOSE 8080

# app will be started through unikraft
# ENTRYPOINT ["/node", "--rest-api-interface=:8080", "--log-level", "*:TRACE"]
