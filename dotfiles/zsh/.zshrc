PROMPT='%F{blue}%n%f@%F{green}%m%f%1\:%F{yellow}%~%f '

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it

# get the OS name for Linux/MacOS specific configurations
uname=$(uname)

# bat ships as `batcat` on Debian/Ubuntu to avoid a name conflict
if [[ "$uname" == "Linux" ]]; then
  alias bat='batcat'
fi
alias cat='bat --paging=never'
alias vscode='code'
alias ls='ls -GFh'
alias vim='nvim'

export EDITOR='nvim'
export SUDO_EDITOR="$EDITOR"

export PATH="$HOME/.local/bin:$PATH"

# for MacOS, add homebrew to PATH
if [[ "$uname" == "Darwin" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi

