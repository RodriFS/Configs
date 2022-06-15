# Configs for Mac

## Instructions

### ZSH
1. install zsh: https://ohmyz.sh/
2. install powerlevel10k: https://github.com/romkatv/powerlevel10k
3. paste `.zshrc` and `.p10k.zsh` into `~`

### Vim
1. install Vim for Mac with support for python 3.9: `brew install vim` or `brew install macvim`
2. paste `.vimrc` into `~`

### Ack
1. install Ack: `brew install ack`
2. paste `.ackrc` into `~`

### iTerm2
1. install iTerm2: https://www.iterm2.com/
2. import `RodrigoIterm.json` from iTerm2

### Github
1. paste the content of `.ssh` into `~/.ssh`
2. download an paste the private keys `id_rsa` and `id_rsa_work` into `~/.ssh`

### Others
1. Install pyenv for multiple python versions with `brew install pyenv`
   - `pyenv install --list` to check the version you want to install
   - `pyenv install <version>` to install a python version
   - `pyenv global <version>` to set the global version
2. Install nvm for multiple node versions with `brew install nvm`
3. Install jdk8 and jdk11
   - `brew tap adoptopenjdk/openjdk` to tap the repository
   - `brew search adoptopenjdk` to list all java versions
   - `brew install adoptopenjdk11` to install java 11
   - `brew install adoptopenjdk8` to install java 8
   - `/usr/libexec/java_home -V` to list all JDK versions
   - check ~/.zshrc to see exported java version
   - `jdk <version>` to change java version


