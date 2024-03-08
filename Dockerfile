FROM carlosrabelo/de-debian:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN curl -fsSL https://code-server.dev/install.sh | sh
