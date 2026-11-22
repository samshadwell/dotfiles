# Enable completion
autoload -Uz compinit && compinit

# ls colors
eval `gdircolors ~/.dir_colors`
alias ls='gls --color -h --group-directories-first'

alias vim='nvim'
alias ssh='ghostty +ssh --'

# PATH manipulation
export PATH="$PATH:$HOME/go/bin"

# no beeping
setopt nobeep

# history-related config
setopt append_history
setopt extended_history
setopt histignorealldups
setopt histignorespace

# store secrets outside of git
source ~/.secrets

# prompt config
setopt PROMPT_SUBST
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}
PROMPT='%F{blue}%(5~|…/%3~|%~) %f%# '
RPROMPT='%B%F{blue}$(parse_git_branch)%f%b'

# dotfile things. See .dotfiles.README.md for more info
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

eval "$(/Users/sam/.local/bin/mise activate zsh)" # added by https://mise.run/zsh

source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh

. "$HOME/.local/bin/env"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/sam/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

