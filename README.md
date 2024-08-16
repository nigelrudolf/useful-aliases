# useful-aliases

Helps with launching simulators and working with worktrees. Use these commands in the root of your project.

## Usage
```
remup                       // Updates the remote origin
push                        // Pushes to the remote origin
add_worktree <branch>       // Adds a worktree for the given branch, uses the current branch as the base
track_worktree <branch>     // Tracks the worktree for the given branch
remove_worktree <branch>    // Removes the worktree for the given branch
```

## Setup
To use the aliases that help with worktrees, you will need to setup the following directory structure:

```
mkdir ~/Work

mkdir ~/Work/worktrees
```

## Installation

Copy the aliases you need directly into your `~/.zshrc`, close the terminal and start a new one. If `~/.zshrc` does not exist, create it.
