#!bash
# shellcheck disable=SC2239

if [[ $(type -t export-alias) == "" ]]; then
	function export-alias { builtin alias "$@"; }
fi

# enable color support of some commands and also add handy aliases
if [ "$TERM" != "dumb" ]; then
	eval "$(dircolors -b ~/.dircolors)"
	alias ls='ls --color=auto --group-directories-first'
	alias dir='ls --color=auto --format=vertical'
	alias vdir='ls --color=auto --format=long'
	alias grep='grep --color=auto'
	alias ncdu='ncdu --color=dark'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias l='ls -CF'

# shellcheck disable=SC2016
export-alias git-dotfiles='git --git-dir="$HOME/src/dotfiles.git"'
alias git-dotfiles-export='export GIT_DIR="$HOME/src/dotfiles.git"'

# /dev/rfkill is tagged uaccess in udev
export-alias rfkill=/usr/sbin/rfkill

# old habits …
export-alias youtube-dl=yt-dlp

alias bel='echo -en "\007"'

alias vim='nvim'
alias view='nvim -R'
alias vimdiff='nvim -d'

alias man='MANWIDTH=$((COLUMNS > 100 ? 100 : COLUMNS)) man'
