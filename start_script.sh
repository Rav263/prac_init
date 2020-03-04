#! /bin/bash
mkdir ~/.vim/
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~/.vimrc

cat .bashrc >>  ~/.bashrc

vim some_file

git config --global user.email "nickiforov.nik@gmail.com"
git config --global user.name "Никита Никифоров"
git config --global core.editor "vim"

source ~/.bashrc

echo "It's work"
