FROM alpine:3.15
LABEL maintainer="oppara@oppara.tv"

RUN apk add --no-cache \
  bash \
  curl \
  grep \
  jq

COPY merge-request.sh /usr/bin/

CMD ["merge-request.sh"]
