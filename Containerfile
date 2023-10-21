
FROM alpine
RUN apk update && apk add --no-cache hugo && apk cache clean

EXPOSE 1313
ENTRYPOINT ["hugo"]
CMD ["--help"]

