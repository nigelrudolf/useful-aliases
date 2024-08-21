# These commands are to be used in project root
# Use this to update your repo with the latest changes from the remote: branches/commits etc
# I run this command frequently to make sure I can see the latest branches other developers have pushed to origin
# This is required to be able to track those branches locally and create worktrees
# usage: remup
alias remup='git remote update origin --prune'
alias push='git push origin HEAD'

# Use this to create a new worktree that creates a new branch
# Usage: add_worktree <branch_name>
add_worktree() {
  branch_name=$1
  git worktree add ~/Work/worktrees/$branch_name -b $branch_name 
}

# Use this to create a new worktree that tracks a remote branch
# Usage: track_worktree <remote_branch_name>
track_worktree() {
  branch_name=$1
  git worktree add --track -b $branch_name ~/Work/worktrees/$branch_name origin/$branch_name
}

# Use this to remove a worktree and deletes the branch
# Usage: remove_worktree <branch_name>
remove_worktree() {
  branch_name=$1
  git worktree remove --force $branch_name
  git branch -D $branch_name
}

commit() {
  message=$1
  git commit --no-verify -m $message
}

bundle_android() {
 cd android
 ./gradlew bundleRelease
 cd ..
 mv android/app/build/outputs/bundle/release/app-release.aab ~/Desktop
}
