# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

source ~/.config/zsh/teston.zsh
source ~/.config/zsh/function.zsh
source ~/.config/zsh/alias.zsh

export SSH_AUTH_SOCK="$(gpgconf --list-dirs | grep agent-ssh-socket | cut -f 2 -d :)"
gpg-connect-agent updatestartuptty /bye

export PATH="$(yarn global bin):$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ridge/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ridge/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ridge/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ridge/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

### OTHER ENV ###
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
