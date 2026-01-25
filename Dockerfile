FROM nginx:alpine

# Copiar el HTML del sistema de restaurante
COPY index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
EXPOSE 80


