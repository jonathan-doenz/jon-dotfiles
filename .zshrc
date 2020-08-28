# From Luke Smith:
# https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52

# vi mode
bindkey -v
export KEYTIMEOUT=1

# # make autocompletion case insensitive
# # Basic auto/tab complete:
# autoload -U compinit
# zstyle ':completion:*' menu select
# # zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# # zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# # zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# # Prompt stuff
# # Load version control information
# autoload -Uz vcs_info
# precmd() { vcs_info }

# Change git to english
alias git='LANG=en_US.UTF-8 git'

# # Format the vcs_info_msg_0_ variable
# zstyle ':vcs_info:git:*' formats 'on branch %b'

# # Set up the prompt (with git branch name)
# setopt PROMPT_SUBST
# PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Load aliases and shortcuts if existent.
[ -f "$HOME/.aliases_sh" ] && source "$HOME/.aliases_sh"
[ -f "$HOME/.functions_sh" ] && source "$HOME/.functions_sh"

# Load zsh-syntax-highlighting; should be last.
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
