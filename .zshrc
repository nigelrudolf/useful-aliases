
alias ipad-mini='yarn react-native run-ios --simulator="iPad mini (6th generation)"'
alias ipad-air='yarn react-native run-ios --simulator="iPad Air (5th generation)"'
# Use this to update your repo with the latest changes from the remote: branches/commits etc
alias remup='git remote update origin --prune'
alias push='git push origin HEAD'

# Use this to create a new worktree that creates a new branch
# Usage: add_worktree <branch_name>
add_worktree() {
  branch_name=$1
  git worktree add ~/Work/worktrees/$branch_name 
}

# Use this to create a new worktree that tracks a remote branch
# Usage: track_worktree <remote_branch_name>
track_worktree() {
  branch_name=$1
  git worktree add --track -b $branch_name ~/Work/worktrees/$branch_name origin/$branch_name
}

# Use this to remove a worktree and deletes the branch
remove_worktree() {
  branch_name=$1
  git worktree remove --force $branch_name
  git branch -D $branch_name
}
