
FROM debian:12-slim
RUN apt update && apt install wget -y
RUN wget -O hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.119.0/hugo_extended_0.119.0_linux-arm64.tar.gz
RUN tar --extract --directory /usr/local/bin/ --file hugo.tar.gz hugo
WORKDIR /opt
EXPOSE 1313
ENTRYPOINT ["hugo"]
CMD ["--help"]

