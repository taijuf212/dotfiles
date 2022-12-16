export PATH="/usr/local/opt/curl/bin:$PATH"
# 各種設定
setopt print_eight_bit

setopt no_beep

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit && compinit
fi

# alias
alias ll='ls -l'
alias -g @g='| grep'
alias -g @l='| less'

# npm
alias nig="npm install -g"
alias nis="npm install --save"
alias nui="npm uninstall"
alias nuis="npm uninstall --save"
alias nls="npm ls"
alias niy="npm init -y"
alias nid="npm install --save-dev"

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '

# git
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gfo='git fetch origin'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsp='git stash pop'

# docker
alias d='docker'
alias dc='docker-compose'
alias dcnt='docker container'
alias dimg='docker image'
alias drun='docker container run —rm -d'
alias drunit='docker container run —rm -it'