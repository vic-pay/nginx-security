mkdir -p /tmp/src && \
cd /tmp/src && \
apk --update add openssl-dev pcre-dev zlib-dev build-base curl unzip && \
curl -fLo nginx-${NGINX_VERSION}.tar.gz  http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz && \
curl -fLo nginx-module-vts.zip           https://github.com/vozlt/nginx-module-vts/archive/master.zip && \
unzip nginx-module-vts.zip && \
tar -zxvf nginx-${NGINX_VERSION}.tar.gz && \
cd /tmp/src/nginx-${NGINX_VERSION} && \
./configure \
    --with-compat \
    --add-dynamic-module=../nginx-module-vts-master \
    --prefix=/etc/nginx && \
make && \
make install && \
rm -rf /var/cache/apk/*