FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir requirements.txt  # --no-cache is used to reduce the image size by not caching the installed packages and does not create any separate folder for cache

EXPOSE 80

CMD ["gunicorn","--bind", "0.0.0.0:80", "app:app"]
