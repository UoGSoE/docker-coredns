FROM coredns/coredns:1.3.1

COPY Corefile /Corefile

EXPOSE 53:53/udp

