#!/usr/bin/env bash
echo "Removing user $1"
userdel -r $1
rm -f /etc/sudoers.d/$1
echo "Done removing user"
