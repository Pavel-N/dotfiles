#!/bin/bash
# This script copies selected dotfiles to this folder

# dotfiles directory
dir=~/Desktop/dotfiles

# list of files/folders to symlink in homedir
files="bashrc zshrc emacs.d config/alacritty config/i3 config/bashtop config/nvim config/nnn config/polybar config/rofi oh-my-zsh"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Copying .$file to $dir."
    cp -r ~/.$file ./$file
done
