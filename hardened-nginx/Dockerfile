FROM nginx:1.29.1-alpine

RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup

COPY index.html /usr/share/nginx/html/index.html

RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R appuser:appgroup \
    /usr/share/nginx/html \
    /var/cache/nginx

RUN sed -i '/^[[:space:]]*user[[:space:]]/d' /etc/nginx/nginx.conf

USER appuser

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]