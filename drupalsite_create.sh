#!/bin/bash

# created this on September 11th, 2012.  
# want to essentially make it one command to create a new drupal site

echo "This will create a new Drupal installation on a Mac OS X computer" ;
echo "";
echo "";
echo "What is the name of your new drupal site (no spaces)";
echo "":
echo " ---------------------------"

read -p "Enter your selection:  " drupal_name;
echo " ";
# echo $choice;  // this is for debugging purposesd
echo " "
echo $drupal_name