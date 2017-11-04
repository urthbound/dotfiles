# git
alias gl='git log --oneline'

# tmux
alias tm="tmux"
alias tl="tmux list-sessions"
alias ta="tmux attach"

# vim
alias vim='reattach-to-user-namespace nvim'
alias vimo="vim -S ~/.vim/sessions/last.vim"

alias pbcopy='reattach-to-user-namespace pbcopy'
alias pbpaste='reattach-to-user-namespace pbpaste'

# other
alias aliases='less ~/.aliases'
alias serve='python -m SimpleHTTPServer 4321'
alias killswap='rm /var/tmp/*.sw* && rm ./*.sw* && rm ~/tmp/*.sw'
alias udate='date +%s'

#fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[34m\]\w\[\033[95m\]\$(parse_git_branch)\[\033[00m\] $ "


# export PATH="$PATH:$HOME/dogfood/bin"
# export PATH="$PATH:$HOME/go/bin"
# export PATH="$PATH:$HOME/code/zig/build"
# export PATH="$HOME/.cargo/bin:$PATH"
# export PATH=/usr/local/php5/bin:$PATH

##rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# export PATH="$PATH:$HOME/.rvm/bin"

export PATH="node_modules/.bin:$PATH"
