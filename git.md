# Git tool
## Remote command
`$git remote show` or `$git remote` -> show remotes
`$git remote show <remote>` -> show details about `<remote>`

## Push command
set upstream branch -> `$git push -u <remote> <branch>`
	`-u` is short for `--set-upstream`

## Log command
use `git log` to see commits authors and date
`-p` option also shows differences made by each commit.
if you specify `<filename>` as argument, it shows commits related to the file

## Branch and Checkout
show branches from remote -> `git branch -r`
    `-a` option will show all branches including local
