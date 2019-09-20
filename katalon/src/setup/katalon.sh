#!/usr/bin/env bash

set -xe

echo "Install Katalon"

version=6.3.3
directory=$version
package=Katalon_Studio_Linux_64-$version.tar.gz
unzipped_directory=Katalon_Studio_Linux_64-$version

# wget -O $package https://github.com/katalon-studio/katalon-studio/releases/download/v$version/Katalon_Studio_Linux_64-$version.tar.gz
wget -O $package https://download.katalon.com/6.3.3/Katalon_Studio_Linux_64-6.3.3.tar.gz

ls
tar -xvzf $package -C $KATALON_KATALON_INSTALL_DIR_PARENT
# mkdir $KATALON_KATALON_INSTALL_DIR_PARENT/$unzipped_directory
# mkdir $KATALON_KATALON_INSTALL_DIR_PARENT/$unzipped_directory/katalon
# mkdir $KATALON_KATALON_INSTALL_DIR_PARENT/$unzipped_directory/configuration
# mkdir $KATALON_KATALON_INSTALL_DIR_PARENT/$unzipped_directory/configuration/resources
# mkdir $KATALON_KATALON_INSTALL_DIR_PARENT/$unzipped_directory/configuration/resources/drivers

ls
rm $package

mv $KATALON_KATALON_INSTALL_DIR_PARENT/$unzipped_directory $KATALON_KATALON_INSTALL_DIR
chmod u+x $KATALON_KATALON_INSTALL_DIR/katalon

chmod -R u+x /opt/katalonstudio/configuration/resources/drivers

echo "Katalon Studio $version" >> $KATALON_VERSION_FILE
