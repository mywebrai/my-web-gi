#!/bin/bash

set -e

# تنظیم پورت
export PORT=${PORT:-3000}

# شروع Nginx با قالب
envsubst '${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# شروع Xray
nohup /usr/local/x-ui/x-ui > /var/log/x-ui.log 2>&1 &

# شروع Nginx
nginx -g "daemon off;"
