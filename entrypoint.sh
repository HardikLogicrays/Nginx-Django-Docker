#!/bin/sh

python3 manage.py migrate --no-input
python3 manage.py collectstatic --no-input

gunicorn nginx_proj.wsgi:application --bind 0.0.0.0:8000