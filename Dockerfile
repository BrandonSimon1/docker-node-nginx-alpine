FROM nginx:1.18-alpine

RUN apk update
RUN apk add nodejs
RUN apk add yarn

COPY ./config /config
RUN cp /config/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT [ "/config/start.sh" ]