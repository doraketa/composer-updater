# Composer Updater
## Introduction

This solution will help you fix the problem if you have an older version of composer installed (1x, which is initially installed when using standard deb repositories). For example:
```sh
Command "self-update" is not defined.
```

## Installation
First step: Clone the repository

```sh
git clone https://github.com/doraketa/composer-updater.git
```

Then go to the directory with the executable file, execute it as root or a privileged user.

```sh
# First Variant
cd src/
sudo bash updater.sh

# Second Variant
mv src/* /usr/bin/updater.sh
sudo updater
```