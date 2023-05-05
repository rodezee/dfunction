FROM openresty/openresty:alpine-fat

ADD ./nginx.conf /usr/local/openresty/nginx/conf/
ADD app /app/

RUN apk update && apk add --no-cache docker-cli
