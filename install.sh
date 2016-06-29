#!/bin/bash


CONFIF_FOLDER="$HOME/config"
CURRENT_FOLDER=`pwd`


################################
## Main logic start Here
################################

#Check if we have the main config folder
if [ ! -d "$CONFIF_FOLDER" ]
then
  mkdir -p $CONFIF_FOLDER
fi

#Check to see if we install atom. If not, install one via braw
if ! type atom > /dev/null 2>&1
then
  brew cask install atom
fi

#Buackup current .atom to .atom_bk and create new folder
mv $HOME/.atom  $HOME/.atom_bk > /dev/null 2>&1
mkdir $HOME/.atom > /dev/null 2>&1

# Mapping config files
sudo ln -s  $CURRENT_FOLDER/init.coffee $HOME/.atom/init.coffee
sudo ln -s  $CURRENT_FOLDER/config.cson $HOME/.atom/config.cson
sudo ln -s  $CURRENT_FOLDER/snippets.cson $HOME/.atom/snippets.cson
sudo ln -s  $CURRENT_FOLDER/keymap.cson $HOME/.atom/keymap.cson
sudo ln -s  $CURRENT_FOLDER/styles.less $HOME/.atom/styles.less
