#! /bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~/.vimrc

cat .bashrc >>  ~/.bashrc

vim some_file

git config --global user.email "nickiforov.nik@gmail.com"
git config --global user.name "Никита Никифоров"

source ~/.bashrc

echo "It's work"
