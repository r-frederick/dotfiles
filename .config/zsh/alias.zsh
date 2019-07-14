# aliased git for use in backed up dotfiles
alias config='/usr/bin/git --git-dir=/Users/ridge/.cfg/ --work-tree=/Users/ridge'

alias vim="nvim"
alias tx=tmuxinator
alias tmd="tmux detach"
alias tks="tmux kill-server"
alias resbiner="sudo killall karabiner_observer karabiner_grabber"

_deleteOldBranches() {
  for branch in `git branch -vv | grep 'gone]' | awk '{print $1}'`
  do
    git branch -D $branch
  done
}
alias dobit=_deleteOldBranches

# fbr - checkout git branch (including remote branches), sorted by most recent commit, limit 30 last branches
_fbr() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
alias fgb=_fbr
