function fzy-cd-selection() {
    BUFFER="cd $(find -type d | fzy)"
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzy-cd-selection
bindkey '^[c' fzy-cd-selection

function fzy-history-selection() {
    BUFFER=$(cat $HOME/.zsh_history | sort | uniq | fzy)
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzy-history-selection
bindkey '^[h' fzy-history-selection

function fzy-gitrepo-selection() {
    BUFFER="cd $(ghq root)/$(ghq list | fzy)"
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzy-gitrepo-selection
bindkey '^[g' fzy-gitrepo-selection

function fzy-cdr () {
    BUFFER="cd $(cdr -l | awk '{ print $2 }' | fzy)"
    CURSOR=$#BUFFER
    zle reset-prompt
 }
zle -N fzy-cdr
bindkey '^[@' fzy-cdr

alias fco="git branch -a | cut -b 3- | perl -pe 's#^remotes/origin/###' | perl -nlE 'say if !\$c{\$_}++' | grep -v -- \"->\" | fzy | xargs git checkout"
alias fmerge="git branch -a | cut -b 3- | perl -pe 's#^remotes/origin/###' | perl -nlE 'say if !\$c{\$_}++' | grep -v -- \"->\" | fzy | xargs git merge"
alias ghqrm="ghq list --full-path | fzy | xargs rm -r"
