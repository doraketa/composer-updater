#!/bin/sh

# Installer Signature
EXPECTED_CHECKSUM="$(wget -q -O - https://composer.github.io/installer.sig)"

# The command that receives the composer installer file
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

# Getting the current CheckSum
CURRENT_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

# Condition if the amount does not match
if [ "$EXPECTED_CHECKSUM" != "$CURRENT_CHECKSUM" ]
then
  >&2 echo 'ERROR: Incorrect verification amount'
  rm composer-setup.php   # Deleting composer-installer file
  exit 1                  # if incorrect arguments are passed to the script
fi
