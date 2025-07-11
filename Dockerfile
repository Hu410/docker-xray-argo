FROM alpine:edge

COPY bin /root/bin/

ARG UUID="ffffffff-ffff-ffff-ffff-ffffffffffff"
ARG PORT=18880

RUN apk update && \
    apk add --no-cache curl wget && \
    chmod -R 777 ~/bin && \
    mkdir -p /var/www/ && \
    echo "1234567890" >> /var/www/index.html

CMD ~/bin/start.sh
