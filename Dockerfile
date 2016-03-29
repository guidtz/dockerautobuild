# Base image ubuntu
FROM guidtz/debian:8

MAINTAINER Guillaume Chéramy <guillaume.cheramy@hisyl.fr>

# Install Apache2
RUN apt-get update && \
apt-get install -y apache2 && \
apt-get clean

# Set the log directory path
ENV APACHE_LOG_DIR /var/log/apache2

# Expose port 80
EXPOSE 80

# Launch Apache2
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
