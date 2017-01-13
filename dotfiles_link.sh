#!/usr/bin/sh

home_dir='/Users/ide'
dotfiles_dir=$home_dir'/programs/dotfiles'

ln -sf $dotfiles_dir/emacs $home_dir/.emacs
ln -sf $dotfiles_dir/profile $home_dir/.profile
ln -sf $dotfiles_dir/gitconfig $home_dir/.gitconfig
ln -sf $dotfiles_dir/gitignore $home_dir/.gitignore
