.PHONY:
all:

all: config
## generate global config
config:
	cabal user-config init \
		-a 'executable-dynamic: True' \
		-a 'username: $(shell pass-extract-field web/hackage user)' \
		-a 'password-command: pass-extract-field~web/hackage~password' \
		-f
	sed -i -e '/^password-command:/s/~/ /g' $@

include ~/_gitignore.mk
include ~/_help.mk

.DELETE_ON_ERROR:
