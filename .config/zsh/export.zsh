export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="$(gpgconf --list-dirs | grep agent-ssh-socket | cut -f 2 -d :)"

export FZF_DEFAULT_COMMAND='rg --files --follow'

export PATH="$(yarn global bin):$PATH"

export VISUAL="vim"
export EDITOR="$VISUAL"
