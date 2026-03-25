#!sh
# ^ might be sourced from /etc/X11/Xsession via ~/.xsessionrc
# shellcheck disable=SC2239

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games
export PATH="$HOME"/.local/share/flatpak/exports/bin:/var/lib/flatpak/exports/bin:"$PATH"
export PATH="$HOME"/.local/bin:"$PATH"
export PATH="$HOME"/bin/.untracked:"$PATH"
export PATH="$HOME"/bin/.aliases:"$PATH"
export PATH="$HOME"/bin:"$PATH"

export LESS="--quit-if-one-screen --no-init --RAW-CONTROL-CHARS --mouse --wheel-lines=3 --LONG-PROMPT"

export RIPGREP_CONFIG_PATH=~/.config/ripgreprc
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS='--preview-window=border-left --info=inline-right'
export FZF_TMUX_HEIGHT=100%
export FZF_TMUX=0
export BAT_STYLE=plain

export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
