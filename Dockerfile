FROM ghcr.io/mhsanaei/3x-ui:latest

# نصب nginx برای رول‌پروکسی
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# کپی کانفیگ nginx
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# کپی اسکریپت استارت
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
