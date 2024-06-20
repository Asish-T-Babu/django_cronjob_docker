#!/bin/bash

# Remove existing PID file if it exists
rm -f /var/run/crond.pid

# Start cron in the foreground
cron -f &

python3 manage.py crontab add

# Start other services or processes (e.g., Django server)
exec python3 manage.py runserver 0.0.0.0:8000
