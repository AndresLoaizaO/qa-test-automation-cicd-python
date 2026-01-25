# Imagen base ligera con servidor web
FROM nginx:alpine

# Eliminar configuración por defecto de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copiar el HTML del sistema de restaurante
COPY index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]

