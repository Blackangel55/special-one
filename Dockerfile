# Birthday website — static site served by nginx
# Works locally and on Render as a Docker Web Service.
# nginx:alpine renders /etc/nginx/templates/*.template with envsubst,
# so it listens on $PORT (Render sets this, default 80 locally).
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY photos/ /usr/share/nginx/html/photos/
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

ENV PORT=80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
