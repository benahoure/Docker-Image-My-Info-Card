FROM fedora:latest

# Update packages
RUN yum update -y 

# Install Apache HTTP server
RUN yum install httpd -y 

# Copy the index.html file into the web server's document root
COPY index.html /var/www/html/
COPY index.css /var/www/html/

# Expose port 80
EXPOSE 80

# Set the default command for the container
CMD ["httpd", "-D", "FOREGROUND"]

# Use the appropriate entrypoint
ENTRYPOINT ["/usr/sbin/httpd"]