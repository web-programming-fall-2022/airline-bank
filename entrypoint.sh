#!/bin/bash
set -e

# Run migrations
python manage.py migrate
gunicorn --bind=0.0.0.0:8000 --workers=4 --preload wp_bank.wsgi:application
