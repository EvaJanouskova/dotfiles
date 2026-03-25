# dotfiles.git will get messed up otherwise,
# and also some git operations won't work
# (in uv, mise itself seems fine)
undefine GIT_DIR

TOKEN_ENV := GITHUB_API_TOKEN=$$(keyring get gh:github.com '')

.PHONY: all
all:
	$(TOKEN_ENV) mise install

.PHONY: update
## Check for updates
update:
	$(TOKEN_ENV) mise upgrade --bump --interactive

.PHONY: gc
## Delete unused versions of tools
gc:
	mise prune

include ~/_help.mk
