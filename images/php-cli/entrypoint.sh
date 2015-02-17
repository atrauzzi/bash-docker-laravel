#!/bin/sh

echo "Configuring environment for `whoami`..."
export DB_HOST=$POSTGRES_PORT_5432_TCP_ADDR
export POSTGRES_PORT=$POSTGRES_PORT_5432_TCP_PORT
export DB_DATABASE=$POSTGRES_DATABASE
export DB_USER=$POSTGRES_USER
export DB_PASSWORD=$POSTGRES_PASSWORD

export REDIS_HOST=$REDIS_PORT_6379_TCP_ADDR
export REDIS_PORT=$REDIS_PORT_6379_TCP_PORT

rm -rf ~/.ssh
cp -r ~/.host-ssh ~/.ssh
chown -R root:root ~/.ssh
chmod -R 400 ~/.ssh

"$@"