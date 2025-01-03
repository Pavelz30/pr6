# Используем официальный образ Python
FROM python:3.12-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл с кодом приложения в контейнер (обратите внимание на файл .dockerignore)
COPY . .

# Устанавливаем зависимости проекта
RUN pip install -r requirements.txt

# Открываем порт 8000
EXPOSE 8000

# Запускаем приложение
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
