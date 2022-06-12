# set brew path
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# enable plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# enable colorized prompt
autoload -U colors && colors

# refresh prompt when start
setopt prompt_subst
# prompt format
PROMPT='%{$reset_color%}%{$fg[cyan]%}$(git branch --show-current 2&> /dev/null | xargs -I branch echo "(*branch) ")%{$reset_color%}%# '
RPROMPT='%{$reset_color%}%{$fg[green]%}[%~]%{$reset_color%}'
