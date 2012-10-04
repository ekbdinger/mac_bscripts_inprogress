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

cd ~/sites/
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
drush si --db-url=mysql://root:root@localhost:8889/$drupal_root
echo " site installed!"
echo " "
echo " "
cd $drupal_root
sleep 1
drush upwd admin --password=admin
echo " "
echo " "
echo "admin password changed"
echo " "
echo " "
echo " Your new Drupal site is installed locally.  Happy Drupaling!"
# echo " log onto your new site localhost:8888"
