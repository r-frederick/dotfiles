# Delete branches that have been merged and deleted on the remote
_deleteOldBranches() {
  for branch in `git branch -vv | grep 'gone]' | awk '{print $1}'`
  do
    git branch -D $branch
  done
}

# fbr - checkout git branch (including remote branches), sorted by most recent commit, limit 30 last branches
_fbr() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

_cdls() {
  cd $1
  ls -al
}
