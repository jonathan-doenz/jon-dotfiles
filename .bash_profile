# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,inputrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# # Add iTerm2 shell integration requires the following command
# # see: https://www.iterm2.com/documentation-shell-integration.html
# source ~/.iterm2_shell_integration.bash

# Bash completion needs the following line
# from https://stackoverflow.com/questions/12399002/how-to-configure-git-bash-command-line-completion:
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# (does not work) from http://davidalger.com/development/bash-completion-on-os-x-with-brew/
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
# 	. $(brew --prefix)/etc/bash_completion
# fi

# Enable pathname expansion
shopt -s extglob;

# Enable aliases expansion
shopt -s expand_aliases

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# activate vi mode when pressing <esc> or <C-ü> (<C-[> on a US-keyboard)
# set -o vi

# # Enable some Bash 4 features when possible:
# # * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# # * Recursive globbing, e.g. `echo **/*.txt`
# for option in autocd globstar; do
# 	shopt -s "$option" 2> /dev/null;
# done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# GIT COMPLETION BEGIN
# Enable tab completion for git commands (only works if git was installed via homebrew)
# try method 1:
# https://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line
# if [ -f $HOME/.git-completion.bash ]; then
# 	. $HOME/git-completion.bash
# 	# . $HOME/.git-completion.bash
# 	# source $HOME/.git-completion.bash
# fi;

# try method 2:
# https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
# [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh";

# Enable tab completion for `g` by marking it as an alias for `git`
# try method 3:
# if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
# 	complete -o default -o nospace -F _git g;
# fi;

# # (doesn't work for some reason...) Add tab completion for git taken from:
# # https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash
# . /usr/local/git/contrib/completion/git-completion.bash
# GIT COMPLETION END

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Make vim the default visual and editor
export VISUAL=vim
export EDITOR="$VISUAL"

# # Add Mapbox API token key in order to do the Deck.gl tutorials
# # http://vis.academy/#/installing-a-coding-environment/installing-tools-mac
# export MAPBOX_TOKEN="pk.eyJ1IjoiamRvZG8iLCJhIjoiY2s4dXE2NTgwMDJpeDNsbmY5bzJlaDZtcCJ9.5MBt6vw7ouEuBnCjTTb5ng"

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jonathandoenz/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jonathandoenz/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jonathandoenz/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jonathandoenz/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

