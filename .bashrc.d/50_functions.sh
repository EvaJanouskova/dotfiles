#!bash
# shellcheck disable=SC2239

function whiteboardclean {
	convert "$1" -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 "$2"
}

function rg {
	if [[ -t 0 && -t 1 && -t 2 ]]; then
		command rg -p "$@" | less
	else
		command rg "$@"
	fi
}

function mise {
	unset GIT_DIR  # prevent git-dotfiles-export messing up stuff

	GITHUB_API_TOKEN=$(keyring get gh:github.com '') \
		command mise "$@"
}
function uv {
	unset GIT_DIR  # prevent git-dotfiles-export messing up stuff
	command uv "$@"
}
