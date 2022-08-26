###############################################################################
# PATHS
###############################################################################
export PATH="/usr/local/bin:$PATH"
export PATH="/Applications/Racket v8.1/bin:$PATH"
export PATH="$HOME/Documents/Github/mm/target/debug:$PATH"
export PATH="$HOME/Documents/arm-unknown-linux-gnueabi/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export PATH="$HOME/Documents/Github/youknow/target/release:$PATH"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/Documents/build-tools:$PATH"
export PATH="$HOME/Documents/mongodb/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

###############################################################################
# TOOLS
###############################################################################

##########
# GOLANG #
##########

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

########
# JAVA #
#######
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

if [[ -f /usr/libexec/java_home ]] then
  export JAVA_HOME=`/usr/libexec/java_home -v 11`
fi

jdk() {
      version=$1
      unset JAVA_HOME;
      export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
      java -version
}

########
# NODE #
########
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export DENO_INSTALL="$HOME/.deno"

##########
# PYTHON #
##########
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

############
# TERMINAL #
############
export CLICOLOR=1
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
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

########
# MISC #
########
alias mongod='mongod --dbpath ~/data/db'
export FZF_DEFAULT_COMMAND='rg --files'

###############################################################################
# ALIAS
###############################################################################

alias csdev='git checkout develop && git pull && npm i && npm run dev'
alias csqa='git checkout release && git pull && npm i && npm run dev'
alias cmpdev='git checkout develop && git pull && npm i && npm start'
alias cmpqa='git checkout release && git pull && npm i && npm start'
alias soup="cd ~/Documents/Github/SoupGB"
alias caf="caffeinate -dimus"
alias python='python3'

