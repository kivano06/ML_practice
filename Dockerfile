# Используем базовый образ с NGINX
FROM nginx:latest

# Копируем конфигурационный файл NGINXdocker build -t custom-nginx .
COPY nginx.conf /etc/nginx/nginx.conf

# Указываем порт, на котором будет работать NGINX
EXPOSE 80

# Команда для запуска NGINX в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]
