FROM gcc:latest

WORKDIR /app
COPY tcp_server.c .

RUN gcc -o tcp_server tcp_server.c

ENTRYPOINT ["./tcp_server"]
