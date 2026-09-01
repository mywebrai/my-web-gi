FROM ghcr.io/mhsanaei/3x-ui:latest

# پورت پیش‌فرض 3x-ui (که می‌توانید تغییر دهید)
EXPOSE 443

# اجرای مستقیم 3x-ui بدون Nginx
CMD ["/usr/local/x-ui/x-ui"]
