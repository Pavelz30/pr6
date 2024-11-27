from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def index():
    # Получаем содержимое страницы из переменной окружения PAGE_CONTENT
    page_content = os.getenv('PAGE_CONTENT', 'Default Content')
    return f'<h1>{page_content}</h1>'
