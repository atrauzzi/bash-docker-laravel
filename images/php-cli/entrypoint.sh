#!/bin/sh

echo "Configuring environment..."

export USER=$USER
export UID=$UID

export APP_DEBUG=$APP_DEBUG
export DB_HOST=$POSTGRES_PORT_5432_TCP_ADDR
export POSTGRES_PORT=$POSTGRES_PORT_5432_TCP_PORT
export DB_DATABASE=$POSTGRES_DATABASE
export DB_USERNAME=$POSTGRES_USER
export DB_PASSWORD=$POSTGRES_PASSWORD

export CACHE_DRIVER=$CACHE_DRIVER
export REDIS_HOST=$REDIS_PORT_6379_TCP_ADDR
export REDIS_PORT=$REDIS_PORT_6379_TCP_PORT

useradd --uid $UID $USER
echo "Running as $USER ($UID)"

rm -rf /home/$USER/.ssh
cp -r /home/$USER/.host-ssh /home/$USER/.ssh
chown -R $USER:users /home/$USER/.ssh
chmod -R 400 /home/$USER/.ssh

echo "Debug: $APP_DEBUG"
echo

su $USER -m -c "$@"
