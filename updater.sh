#!/bin/sh

# Installer Signature
EXPECTED_CHECKSUM="$(wget -q -O - https://composer.github.io/installer.sig)"

# The command that receives the composer installer file
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

# Getting the current CheckSum
CURRENT_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"