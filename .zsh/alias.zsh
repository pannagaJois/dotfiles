# ~/.zsh/alias
source ~/.zsh/functions.zsh

## list ##
alias ls='eza --color=always --icons=always'
alias la='eza -a --icons=always'
alias ll='eza -l -a --icons=always --no-time'
alias lst='eza -T --level=2 --color=always --icons=always'
alias lsf='eza -f -a --color=always --icons=always'
alias lstd='eza -D -T --level=2 --color=always --icons=always'
alias tree='eza -T --level=3 --color=always --icons=always'

alias cat='bat --style header --style snip --style changes --style header'  # cat

alias ..='cd ..'    # go back
alias ...='cd ../..'    # go back 2 steps
alias .='cd /'  # go to root dir
alias cd='z'

# other
alias c='clear'
alias q='exit'

# disk spaces and RAM usage
alias du='du -sh'
alias disk='rsc __disk'

#nvim
alias nv='nvim'
# updates

# git alias
alias add='git add .'
alias clone='git clone'
alias branch='git branch -M main'
alias commit='git commit -m'
alias push='git push'
alias pushm='git push -u origin main'
alias pusho='git push origin' # and add your branch name 
alias pull='git pull'
alias info='git_info'
alias status='git status'

# others
alias sys='btop'
alias clock='tty-clock -c -t -D -s'

alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Alias for neovim
if [[ -x "$(command -v nvim)" ]]; then
	alias vi='nvim'
	alias vim='nvim'
	alias svi='sudo nvim'
	alias vis='nvim "+set si"'
elif [[ -x "$(command -v vim)" ]]; then
	alias vi='vim'
	alias svi='sudo vim'
	alias vis='vim "+set si"'
fi

# Alias to launch a document, file, or URL in it's default X application
if [[ -x "$(command -v xdg-open)" ]]; then
	alias open='runfree xdg-open'
fi

# Alias to launch a document, file, or URL in it's default PDF reader
#if [[ -x "$(command -v evince)" ]]; then
#    alias pdf='runfree evince'
#fi

# Alias For bat
if [[ -x "$(command -v bat)" ]]; then
    alias cat='bat'
fi

# make executable script
alias exe='chmod +x'
