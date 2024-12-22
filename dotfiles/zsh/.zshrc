PROMPT='%F{blue}%n%f@%F{green}%m%f%1\:%F{yellow}%~%f '

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it

alias ls='ls -GFh'
alias vim='nvim'

export EDITOR='nvim'
export SUDO_EDITOR="$EDITOR"

export PATH="$HOME/.local/bin:$PATH"

if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi

# if command -v fzf &> /dev/null; then
#   source /usr/share/bash-completion/completions/fzf
#   source /usr/share/doc/fzf/examples/key-bindings.bash
# fi

