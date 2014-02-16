#!/bin/bash

# created this on September 11th, 2012.  
# want to essentially make it one command to create a new drupal site

# this seems to be working as of 18:18 on September 11th, 2012

echo "This will create a new Drupal installation on a Mac OS X computer" ;
echo "What is the name of your new drupal site (no spaces)";
echo " ---------------------------"

read -p "Enter your selection:  " drupal_root;
echo " ";
# echo $drupal_name  // for debugging purposes.  Good until this point

# cd ~/sites/
# cd "$(dirname "$0")"
cd $PWD
echo "Downloading Drupal..."
echo " "
echo " "
drush dl drupal --drupal-project-rename=$drupal_root
echo " "
echo " "
cd $drupal_root/
sleep 1 
pwd
echo " Creating MySQL Database"
echo " "
echo " "
drush si -y --db-url=mysql://root:root@localhost:8889/$drupal_root --account-name=admin --account-pass=admin --account-mail=admin@example.com --site-mail=admin@example.com
echo " site installed!"
echo " "
drush dl module_filter admin_menu ctools devel entity features module_filter panels rules views backup_migrate strongarm
echo " Modules downloaded"
 drush dis -y toolbar overlay
 echo " "
sleep 1
echo " "
drush en -y module_filter admin_menu_toolbar ctools devel_generate entity features module_filter panels rules_admin views_ui backup_migrate strongarm
echo " "
echo " Modules enabled!"
echo " "
drush vset user_register "0"
echo " "
echo " "
echo " Your new Drupal site is installed locally.  Happy Drupaling!"
