#!/bin/bash

apt install apache2
systemctl start apache2

servstat=$(service apache2 status)

if [[ $servstat == *"active (running)"* ]]; then
  echo "apache process is running"
else echo "apache process is not running" && exit 1
fi

echo "Hello world" > /var/www/html/index.html
