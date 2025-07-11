FROM nginx:alpine

COPY . /usr/share/nginx/html/

RUN rm -f /usr/share/nginx/html/Dockerfile

RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
