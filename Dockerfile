FROM openresty/openresty:alpine-fat

ADD ./nginx.conf /usr/local/openresty/nginx/conf/
ADD app /app/

RUN apk update && apk add --no-cache docker-cli

RUN apk add --no-cache git
RUN luarocks install lua-cjson
RUN luarocks install basexx
RUN luarocks install http CRYPTO_DIR=/usr/local/openresty/openssl/ OPENSSL_DIR=/usr/local/openresty/openssl/
RUN luarocks install https://raw.githubusercontent.com/rodezee/lua-docker/master/docker-scm-1.rockspec
