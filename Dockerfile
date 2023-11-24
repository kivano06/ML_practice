# Используем базовый образ PostgreSQL из Docker Hub
FROM postgres:latest

# Переменные окружения для создания пользователя и базы данных
ENV POSTGRES_USER test
ENV POSTGRES_PASSWORD kirilltest
ENV POSTGRES_DB test

# Копируем скрипт инициализации в контейнер
COPY init.sql /docker-entrypoint-initdb.d/

# Указываем порт, на котором будет работать PostgreSQL
EXPOSE 5432
