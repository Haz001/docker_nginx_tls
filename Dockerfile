FROM nginx:alpine-slim
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./.test_certs/cert.crt /etc/nginx/cert.crt
COPY ./.test_certs/priv.key /etc/nginx/priv.key

EXPOSE 80/tcp
EXPOSE 443/tcp

