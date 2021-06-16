FROM nginx:1.18-alpine

RUN apk update
RUN apk add --upgrade nodejs-current 
RUN apk add --upgrade yarn

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
