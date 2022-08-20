#!/bin/zsh

xcode-select --install

# Configure git
git config --global pull.rebase true
git config --global init.defaultBranch main

git init
git remote add origin git@github.com:RodriFS/Configs.git
git branch -u origin/main

# Install oh-my-zsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

# Install font
cd ~/Library/Fonts && {
    curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
    cd -; }

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
source ~/.zshrc

# Install Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

# Install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bash_profile
nvm install 14

# Setup vim
mkdir .vim/backup
mkdir .vim/swp
mkdir .vim/undodir

# Update vim
brew install vim
vim +PlugInstall +qal

# install rg
brew install rg

# Install Iterm2
open https://iterm2.com/downloads.html
