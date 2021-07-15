echo hello! .zshrc

setopt prompt_subst
TMOUT=1
TRAPALRM() {
    if [ "$WIDGET" != "expand-or-complete" ]; then
        zle reset-prompt
    fi
}
PROMPT='%D{%Y-%m-%d %H:%M:%S} %F{green}%n:%(5~,%-1~/.../%2~,%~) $%f '

# 補完
autoload -U compinit
compinit -u

setopt correct
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "

setopt auto_cd
setopt auto_pushd

# 色
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"


HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history

autoload history-search-end


alias grep='grep --color'
# alias diff="coloddiff"

#brew
alias brew_update_series='brew update && brew upgrade && brew upgrade --cask'

# git
alias g="git"

alias gs='git status'

alias gb='git branch'
alias gba='git branch -a'

alias gd='git diff'

alias gch='git checkout'
alias gchb='git checkout -b'


alias ga='git add'

alias gcm='git commit -m'

alias gm='git merge'

alias gpso='git push origin'

alias gplo='git pull origin'
alias gf='git fetch'

# logを見やすく
alias gl='git log --abbrev-commit --no-merges --date=short --date=iso'
# grep
alias glg='git log --abbrev-commit --no-merges --date=short --date=iso --grep'
# ローカルコミットを表示
alias glc='git log --abbrev-commit --no-merges --date=short --date=iso origin/html..html'


export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

export PATH="$HOME/.yarn/bin:$PATH"

# export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/1.1.1f/bin:$PATH"
