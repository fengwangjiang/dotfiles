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

autoload -Uz promptinit
promptinit
prompt steeef

namedir () { $1=$PWD ;  : ~$1 }
bindkey -v

bindkey '\e.' insert-last-word
alias la='ls -al'
alias l='ls'
alias ll='ls -lh'
alias lll=longlist

alias oa='la'
alias o='l'
alias oo='ll'
alias ooo='lll'

alias -g L='--color=always | less -r'

alias as='apt-cache search'
alias au='apt-get update && apt-get upgrade'
alias ai='apt-get install'

alias essh='vim ~/.ssh/config'
alias ez='vim ~/.zshrc'
alias sz='. ~/.zshrc'
alias ezt='vim ~/$ZSH_CUSTOM/$ZSH_THEME.zsh-theme'

alias echolast='tail -n 2 ~/.zsh_history | head -n 1| cut -d ";" -f 2- -'

alias homesick="$HOME/.homeshick"

function longlist {
  ls -Shla --color=always "$1" | less -r
}

#From http://www.zsh.org/mla/users/1999/msg00632.html
function ext_glob {
    setopt localoptions extendedglob
    local command="$1"
    shift
    $==command $==~*      # redo globbing on arguments
}
alias extglob='noglob ext_glob '  # delay globbing until inside
