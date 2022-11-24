FROM python:3.8.5-alpine

COPY ./requirements.txt .
RUN  pip install -r requirements.txt

COPY ./nginx_proj /app

WORKDIR /app

COPY ./entrypoint.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]