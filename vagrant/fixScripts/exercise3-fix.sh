#!/bin/bash
#add fix to exercise3 here
sudo apt-get update
find /etc/apache2/sites-available/ -type f -and -not -name "*default*" -exec a2ensite {} \;
sudo sed -i 's/Require all denied/Require all granted/' /etc/apache2/sites-available/000-default.conf

sudo service apache2 reload
sudo service apache2 restart
