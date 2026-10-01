FROM nginx:1.29.1-alpine

RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup

COPY index.html /usr/share/nginx/html/index.html

RUN mkdir -p /var/cache/nginx/client_temp \
             /var/run/nginx && \
    chown -R appuser:appgroup \
        /usr/share/nginx/html \
        /var/cache/nginx \
        /var/run/nginx

RUN sed -i '/^[[:space:]]*user[[:space:]]/d' /etc/nginx/nginx.conf && \
    sed -i 's#pid[[:space:]]*/run/nginx.pid;#pid /var/run/nginx/nginx.pid;#' /etc/nginx/nginx.conf && \
    sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

USER appuser

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]