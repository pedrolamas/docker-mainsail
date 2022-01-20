FROM nginx:alpine

ENV PORT=80 \
    API_HOST=127.0.0.1

COPY /mainsail/dist /usr/share/nginx/html
COPY /nginx /etc/nginx/templates
