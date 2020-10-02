FROM alpine

ENV PORT    3000
ENV UUID    89297ce6-f702-4a96-a9dc-1f41011429d4
ENV PROTOCOL    vless

RUN apk update && apk add --no-cache unzip ca-certificates && \
    wget -c https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl
    
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
