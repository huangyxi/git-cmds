# Commands for Git on Bash

## Fundamental Concepts

- *directory*
- *workplace*
- *stage*
- *(local) repository*
- *remote (repository)*

## Preparation

- `ssh-keygen -t rsa -C "example@example.com"`
generate ssh key

- `git config --global user.name Mark`
set global user name

- `git config --global user.email example@example.com`
set global user email

- `git init`
initialize (create) *workplace* at current working directory

- `git config --global credential.helper store`
save GitHub account and password after inputting permanently

- `git remote add origin https://github.com/Markhng/git-test`
add *remote (repository)* named "origin"

- `git config --local  commit.gpgsign true`
set GPG-sign as default

## Commonness

- `git add .`
add all files in the current working directory to *stage*

- `git commit [-a] -m "note"`
commit all files from *stage* to *(local) repository* with note. [-a] means commit all files from *workplace* to *repository* directly

- `git push [remote-name] [branch-name]`
push all files from *stage* to *branch* of *remote*

- `git rm -r --cached file.ext`
untrack file.ext after

- `git rm -r --cached .;git add .;git commit -m 'update .gitignore'`
reload stage while .gitignore not work

## Advanced Operations

- `git log --stat`
show the brief log (changes of lines)

- `git reset HEAD~1`
undo last operation

- 
```
git filter-branch --force --index-filter 'git \
rm --cached --ignore-unmatch SECURE.txt' \
--prune-empty --tag-name-filter cat -- --all
```
remove SECURE file completely
## FAQ

```shell_session
$ git pull origin
You asked to pull from the remote 'origin', but did not specify
a branch. Because this is not the default configured remote
for your current branch, you must specify a branch on the command line.
$ git pull origin master --allow-unrelated-histories
```

