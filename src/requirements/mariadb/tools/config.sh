#!/bin/sh

MYSQL_RUN_DIR="/run/mysqld"
MYSQL_DATA_DIR="/var/lib/mysql"
MYSQL_CONFIG_FILE="/etc/mysql/mariadb.conf.d/50-server.cnf"

# Check if the MySQL run directory exists, and create it if not
mkdir -p "$MYSQL_RUN_DIR"
chown -R mysql:mysql "$MYSQL_RUN_DIR"

# Check if the MySQL data directory exists, and create it if not
if [ ! -d "$MYSQL_DATA_DIR/mysql" ]; then
    chown -R mysql:mysql "$MYSQL_DATA_DIR"
    mysql_install_db --basedir=/usr --datadir="$MYSQL_DATA_DIR" --user=mysql --rpm > /dev/null

    # ... (rest of your setup)
fi

# ... (rest of your script)

# Start MariaDB with the modified configuration
exec /usr/bin/mysql --user=mysql
