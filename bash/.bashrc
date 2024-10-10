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
