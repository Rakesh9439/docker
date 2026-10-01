FROM nginx:1.29.1-alpine

RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup

COPY index.html /usr/share/nginx/html/index.html

RUN chown -R appuser:appgroup /usr/share/nginx/html

USER appuser

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]