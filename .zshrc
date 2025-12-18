export PATH=$PATH:$(go env GOPATH)/bin
export PATH="/usr/local/opt/curl/bin:$PATH"
# alias
alias ll='ls -l'


# git
alias st='status'
alias cm='commit'
alias co='checkout'

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



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fukayataiju/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/fukayataiju/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fukayataiju/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/fukayataiju/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# mise
eval "$(mise activate zsh)"
# aqua
export PATH="$(aqua root-dir)/bin:$PATH"
