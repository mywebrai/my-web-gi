#!/bin/bash
set -e

export PORT=${PORT:-3000}

# اجرای 3x-ui در پس‌زمینه
/usr/local/x-ui/x-ui > /var/log/x-ui.log 2>&1 &

# تنظیم پورت در nginx
envsubst '${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# اجرای nginx
nginx -g "daemon off;"
