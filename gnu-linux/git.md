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

## Tags
to relocate a tag with the same info and details (annotated text alongside the tag itself) you can use `-f` flag like this:
```sh
git tag -fa <tag-name>
```
**be careful** that you might need to delete the tag from any remote before pushing any tags. you can delete a tag using this command:
```sh
git push origin :<tag-name>
# or 
git push origin --delete <tag-name>
# afterward deleteing, push tags
git push origin --tags 
# or
git push origin <tag-name>
```
## Git config global and local
when you enter `git config ...` inside a repository, it applies your config only on the local repository setting. you can add `--global` flag to make it a global setting for every repository on the machine.
## Git Comment char
change `#` char for comments to use it for header like markdown?
```
git config core.commentchar ";"
```
## Git Temp remote save
Here is the **problem**: you don't want to commit anything because they should not get committed but you want to save those files on your remote repository for safety reasons. 
Here is the **Idea**: you make a temporary branch, commit everything blindly just for the sake of preservation, and after that you checkout to your own working branch and restore git with that branch as source. This way you working directory stays the same without committing unfinished work into your working branch and you can repeat this procedure at the end of each working day.
Here is the **Solution**:
- committing everything in another branch is easy:
``` bash
git checkout -b temp-<date> # date of the day like 05-05-2025
git add .
git commit -m "blind commit"
git push <remote> temp-<date> # any remote you use to save you work
```
- getting back to your own branch with unfinished files uncommitted:
``` bash
git checkout dev # or any other branch you working on
git restore --source=temp-<date> . # the same branch name you used eariler
```
you may want to delete the previous temporary branches so I listed the needed commands to remember:
``` bash
git branch -D temp-<date> # force delete the branch
git push <remote> --delete temp-<date> # deletes the branch in remote
```
> you must use `-D` flag to force a delete because you want to ignore the commits from your temporary branch 

## GPG signing
you can sign commits and tags with a private gpg key and let others to verify that you authored those commits or tags, using Gnu Privacy Guard tool. here is a list of different descriptions on how to sign your commits or tags:

- `-S` flag with `git-commit` and it also requires the key-id with `--gpg-sign=<KEY-ID>` or it will use the committer identity to find out proper key. 
- `-s` flag with `git-tag` and just like the last one it requires the key id with `-u <key-id>` flag and argument, or otherwise it uses the default key configured in git
- using automatic signing with `git config`

with `git config` you can configure a default gpg key for signing your commits or tags, globally for every repository on your system or just for one repository. 

**git configuration keys used for automatically signing tags or commits:**
- `user.signingkey <key-id>`
- `commit.gpgSign true/false` (control automatic signing **commits**, true for activation)
- `tag.gpgSign true` (like commits but specially for **tags**)

> deepseek conversation about gpg signing: https://chat.deepseek.com/share/nq9mwgytr15atrqgmv

