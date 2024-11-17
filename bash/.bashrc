export LS_COLORS="$(vivid generate catppuccin-mocha)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# starship
eval "$(starship init bash)"

# fnm
FNM_PATH="/home/arjan/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env)"
fi

# bash completion
source /usr/share/bash-completion/bash_completion

# kubernetes
source <(kubectl completion bash) # set up autocomplete in bash into the current shell, bash-completion package should be installed first.
alias k=kubectl
complete -o default -F __start_kubectl k

alias "ls=ls --color=auto"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# flux
. <(flux completion bash)

# Created by `pipx` on 2024-10-15 14:51:08
export PATH="$PATH:/home/arjan/.local/bin"

# Adapted from https://unix.stackexchange.com/a/113768/347104
if [ -n "$PS1" ] && [ -z "$TMUX" ]; then
  # Adapted from https://unix.stackexchange.com/a/176885/347104
  # Create session 'main' or attach to 'main' if already exists.
  tmux new-session -A -s main
fi
