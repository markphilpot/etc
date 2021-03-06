#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
source ${HOME}/etc/per-directory-history/per-directory-history.zsh

#which dircolors > /dev/null
#if [[ $? -eq 0 ]] then eval `dircolors ${HOME}/etc/lib/dircolors-solarized/dircolors.256dark`; fi

alias l='$HOME/etc/bin/showlevel'
alias server='python -m SimpleHTTPServer'

alias dc='docker-compose'
alias dme='eval $(docker-machine env default)'

alias by='open -a ByWord.app'

export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME="$HOME/etc/maven"
export PATH="$M2_HOME/bin:$HOME/etc/bin:/opt/local/bin:/opt/jdk/bin:$HOME/bin:$PATH"

# fzf aliases
alias drmi="docker images | fzf -m | awk '{print $3}' | xargs docker rmi"
alias drm="docker ps -a | fzf -m | awk '{print $1}' | xargs docker rm"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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

umask 022
