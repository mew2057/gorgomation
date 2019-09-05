#!/bin/bash

# Copy over the vimrc file.
cp vimrc ~/.vimrc

# Get pathogen.
if [[ ! -f "~/.vim/autoload/pathogen.vim" ]]; then
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi
echo "pathogen installed"


# Make sure the Bundle is there and change dir.
mkdir -p ~/.vim/bundle 
cd ~/.vim/bundle

# Jinja2 syntax
git clone https://github.com/lepture/vim-jinja.git 2>/dev/null
echo "vim jinja installed"

# Vim Sensible defaults.
git clone https://github.com/tpope/vim-sensible.git 2>/dev/null
echo "vim sensible installed"
