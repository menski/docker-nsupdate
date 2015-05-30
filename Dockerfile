FROM ubuntu:latest

# install nsupdate
RUN apt-get update && \
    apt-get install -y --no-install-recommends dnsutils && \
    apt-get clean && \
    rm -rf /var/cache/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/nsupdate"]
