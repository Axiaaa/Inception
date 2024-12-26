FROM debian:bullseye

# Set the environment variables
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_PASSWORD
ARG MYSQL_USER

# Install MariaDB
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the configuration file
COPY my.cnf /etc/mysql/my.cnf

# Copy the script, set the permissions
COPY setup.sh /setup.sh
RUN chmod +x /setup.sh

# Run the script
CMD ["/setup.sh"]
