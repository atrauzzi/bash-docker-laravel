#!/bin/sh

echo "Configuring SSH Environment for `whoami`..."
rm -rf ~/.ssh
cp -r ~/.host-ssh ~/.ssh
chown -R root:root ~/.ssh
chmod -R 400 ~/.ssh

"$@"