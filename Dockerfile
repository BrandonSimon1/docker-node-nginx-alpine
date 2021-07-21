FROM nginx:1.18-alpine

RUN apk update
<<<<<<< HEAD
RUN apk add --upgrade nodejs-current 
RUN apk add --upgrade yarn

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
=======
RUN apk add nodejs
RUN apk add yarn

COPY ./config /config
RUN cp /config/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT [ "/config/start.sh" ]
>>>>>>> master
