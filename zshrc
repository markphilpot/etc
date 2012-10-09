# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

DEFAULT_USER="mphilpot"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mvn encode64 git-flow mvn pip supervisor)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias l='$HOME/etc/showlevel'
alias server='python -m SimpleHTTPServer'

export M2_HOME="$HOME/etc/maven"
export MAVEN_OPTS="-XX:MaxPermSize=256M"
export PATH="$M2_HOME/bin:$PATH"

export no_proxy="$no_proxy,dbwiki"

function k
{
    level=$1
    cdback=""
    for i in `seq 1 $level`
    do
        cdback=$cdback"../"
    done

    cd $cdback
}
