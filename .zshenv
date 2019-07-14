#
# Defines environment variables.
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export EDITOR="/usr/local/bin/nvim"
export VISUAL="$EDITOR"

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="$(gpgconf --list-dirs | grep agent-ssh-socket | cut -f 2 -d :)"

export FZF_DEFAULT_COMMAND='rg --files --follow'

export PATH="$(yarn global bin):$PATH"

