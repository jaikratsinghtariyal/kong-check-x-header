FROM alpine:latest as builder
RUN apk add --no-cache git
RUN mkdir /check-x-header
RUN git clone https://github.com/jaikratsinghtariyal/kong-check-x-header.git /check-x-header

FROM kong/kong-gateway:2.4.1.0-alpine
USER root
RUN mkdir /usr/local/share/lua/5.1/kong/plugins/check-x-header
COPY --from=builder /check-x-header/kong/plugins/check-x-header/. /usr/local/share/lua/5.1/kong/plugins/check-x-header
USER kong
