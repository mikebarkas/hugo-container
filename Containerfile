
FROM cgr.dev/chainguard/wolfi-base:latest
RUN apk add --no-cache hugo
LABEL org.opencontainers.image.source https://github.com/mikebarkas/hugo-container
WORKDIR /opt
EXPOSE 1313
USER nonroot
ENTRYPOINT ["hugo"]
CMD ["--help"]

