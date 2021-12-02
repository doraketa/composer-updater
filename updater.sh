#!/bin/sh

# Installer Signature
EXPECTED_CHECKSUM="$(wget -q -O - https://composer.github.io/installer.sig)"
