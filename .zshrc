###############################################################################
# PATHS
###############################################################################

export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="/usr/local/bin:$PATH"
export PATH="/Applications/Racket v8.1/bin:$PATH"
export PATH="$HOME/Documents/Github/mm/target/debug:$PATH"
export PATH="$HOME/Documents/arm-unknown-linux-gnueabi/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export PATH="$HOME/Documents/Github/youknow/target/release:$PATH"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/Documents/build-tools:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/Documents/mongodb/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$WASMTIME_HOME/bin:$PATH"

###############################################################################
# TOOLS
###############################################################################

##########
# DOTNET #
##########
export DOTNET_ROOT="$(dirname $(which dotnet))"

##########
# GOLANG #
##########

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
export GOPRIVATE=github.com/Elenpay/ep-backend

########
# JAVA #
#######
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

if [[ -f /usr/libexec/java_home ]] then
  export JAVA_HOME=`/usr/libexec/java_home -v 11 2>/dev/null`
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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DENO_INSTALL="$HOME/.deno"

##########
# PYTHON #
##########
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
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
plugins=(git zsh-autosuggestions fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

########
# MISC #
########
alias mongod='mongod --dbpath ~/data/db'
export FZF_DEFAULT_COMMAND='rg --files'
export CR_PAT=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
###############################################################################
# ALIAS
###############################################################################

alias imp='/Users/rodrifs/Documents/Git/improvisers_os/target/release/improvisers_os'
alias opensparrow='open -a Sparrow.app --args -n regtest'
alias csdev='git checkout develop && git pull && npm i && npm run dev'
alias csqa='git checkout release && git pull && npm i && npm run dev'
alias cmpdev='git checkout develop && git pull && npm i && npm start'
alias cmpqa='git checkout release && git pull && npm i && npm start'
alias soup="cd ~/Documents/Github/SoupGB"
alias caf="caffeinate -dimus"
alias python='python3'
alias flutter='fvm flutter'
alias glols='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'\'' --stat'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


. $HOME/z/z.sh

alias gs="git stash --include-untracked"
alias gsp="git stash pop"
alias gsa="git stash apply"
alias gexists="git fetch origin"
alias mm="/Users/rodrifs/Documents/Git/mm/target/release/mm"
alias dlf="/Users/rodrifs/Documents/Git/dlf/target/release/dlf"
alias vim="nvim"
alias push="git push --set-upstream origin $(git branch --show-current)"
alias amend="git commit --all --amend --no-edit"

edit() {
  commit=${1}
  git rebase --interactive $commit~
}

