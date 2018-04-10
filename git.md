# Commands of Git on Bash

## ~~Fundamental Concepts~~

## Preparation

- `git config --global user.name Mark`
set global user name

- `git config --global user.email example@example.com`
set global user email

- `set init`
initialize (create) *workplace* at current working directory

- `git config --global credential.helper store`
save GitHub account and password after inputting permanently

- `git remote add origin https://github.com/Markhng/git-test`
add *remote (repository)* named "origin"

## Commonness

- `git add .`
add all files in the current working directory to *stage*

- `git commit [-a] -m "note"`
commit all files from *stage* to *(local) repository* with note. [-a] means commit all files from *workplace* to *repository* directly

- `git push [remote-name] [branch-name]`
push all files from *branch*  to *remote*

## FAQ

```shell
$ git pull origin
You asked to pull from the remote 'origin', but did not specify
a branch. Because this is not the default configured remote
for your current branch, you must specify a branch on the command line.
$ git pull origin master --allow-unrelated-histories
```
