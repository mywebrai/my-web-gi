FROM ghcr.io/mhsanaei/3x-ui:latest

# نصب nginx با استفاده از apk (چون ایمیج Alpine هست)
RUN apk add --no-cache nginx gettext

# کپی کانفیگ nginx
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# کپی اسکریپت استارت
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
