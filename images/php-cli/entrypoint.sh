#!/bin/sh

echo "Configuring environment for `whoami`..."
export DB_HOST=$POSTGRES_PORT_5432_TCP_ADDR
export DB_DATABASE=$POSTGRES_DATABASE
export POSTGRES_PORT=$POSTGRES_PORT_5432_TCP_PORT

export REDIS_HOST=$REDIS_PORT_6379_TCP_ADDR
export REDIS_PORT=$REDIS_PORT_6379_TCP_PORT

rm -rf ~/.ssh
cp -r ~/.host-ssh ~/.ssh
chown -R root:root ~/.ssh
chmod -R 400 ~/.ssh

"$@"