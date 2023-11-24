-- Создаем пользователя test с паролем
CREATE USER test WITH PASSWORD 'kirilltest';

-- Создаем базу данных test и назначаем ее владельцем пользователя test
CREATE DATABASE test OWNER test;
