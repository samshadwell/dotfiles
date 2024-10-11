# Enable completion
autoload -Uz compinit && compinit

# ls colors
eval `gdircolors ~/.dir_colors`
alias ls='gls --color -h --group-directories-first'

alias vim='nvim'

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

# Virtual environments
eval "$(/usr/local/bin/mise activate zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

