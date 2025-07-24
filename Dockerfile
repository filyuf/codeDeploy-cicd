# Pakai image web server ringan
FROM nginx:alpine

# Copy file HTML kamu ke folder web server
COPY . /usr/share/nginx/html

# Port default NGINX
EXPOSE 80

# Healthcheck untuk memastikan aplikasi berjalan
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost || exit 1
