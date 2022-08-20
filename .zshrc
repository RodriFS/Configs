export CLICOLOR=1
export CI_JOB_TOKEN=yczeh5Q2ypVXn9d-xxjA
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/usr/local/bin:$PATH"
export PATH="/Applications/Racket v8.1/bin:$PATH"
export PATH="$HOME/Documents/Github/mm/target/debug:$PATH"
export PATH="$HOME/Documents/arm-unknown-linux-gnueabi/bin:$PATH"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH=$PATH:$HOME/Documents/Github/youknow/target/release

jdk() {
      version=$1
      unset JAVA_HOME;
      export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
      java -version
}

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export FZF_DEFAULT_COMMAND='rg --files'

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

alias csdev='git checkout develop && git pull && npm i && npm run dev'
alias csqa='git checkout release && git pull && npm i && npm run dev'
alias cmpdev='git checkout develop && git pull && npm i && npm start'
alias cmpqa='git checkout release && git pull && npm i && npm start'
alias soup="cd ~/Documents/Github/SoupGB"
alias caf="caffeinate -dimus"
alias aedit="$HOME/Documents/Github/cms_deploy_manager/scripts/edit_file.sh"

export PATH="$HOME/Documents/build-tools:$PATH"
export PATH="$HOME/Documents/mongodb/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$HOME/.cargo/bin:$PATH"

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias mongod='mongod --dbpath ~/data/db'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
