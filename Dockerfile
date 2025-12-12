# Use a small nginx image to serve static html
FROM nginx:stable-alpine
COPY index.html /usr/share/nginx/html/index.html
COPY env.html /usr/share/nginx/html/env.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

