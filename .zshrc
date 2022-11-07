alias ipad-mini='yarn react-native run-ios --simulator="iPad mini (6th generation)"'

alias ipad-air='yarn react-native run-ios --simulator="iPad Air (5th generation)"'

alias remup='git remote update origin --prune'

alias push='git push origin HEAD'

alias add_worktree() {
  branch_name=$1
  git worktree add ~/Work/worktrees/$branch_name 
}

alias track_worktree() {
  branch_name=$1
  git worktree add --track -b $branch_name ~/Work/worktrees/$branch_name origin/$branch_name
}
