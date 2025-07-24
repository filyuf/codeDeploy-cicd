# Pakai image web server ringan
FROM nginx:alpine

# Copy file HTML kamu ke folder web server
COPY . /usr/share/nginx/html

# Port default NGINX
EXPOSE 80
