#!/bin/sh

echo "Start pg_upgrade"

/etc/init.d/postgresql stop

sudo su - postgres -c '/usr/lib/postgresql/10/bin/pg_upgrade -v -d /data_old/postgresql/9.1/main -D /data/postgresql/10/main/ -b /usr/lib/postgresql/9.1/bin -B /usr/lib/postgresql/10/bin/ -o "-c config_file=/etc/postgresql/9.1/main/postgresql.conf" -O "-c config_file=/etc/postgresql/10/main/postgresql.conf"'

echo "Stop pg_upgrade"
