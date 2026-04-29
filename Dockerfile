FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install --requirement requirements.txt       

EXPOSE 80

CMD ["gunicorn","--bind", "0.0.0.0:80", "app:app"]
