FROM nginx:alpine

COPY /mainsail/dist /usr/share/nginx/html
COPY /nginx /etc/nginx/conf.d

EXPOSE 80
