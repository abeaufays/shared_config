For alias list see [.gitconfig](./.gitconfig)

### Simple install

Run:

```shell
./setup_git.sh
```

_This script uses symlink, updating this repo will be enough for future evolutions_

It will prompt you to enter a name and email to add it to a `.gitconfig.user` that will contain user specific config

### Add commit message template to one project

Inside target repository:

```shell
git config --local commit.template ~/.git_commit_msg.txt
```

_Can be included and modified by project_

### Manual global gitignore setup (without using script)

Symlink this .gitignore in your home

```shell
ln .gitignore.global ~/
```

**(Alternative)** Copy this .gitignore in your home (if you don't want it to be updated)

Setup the file as a global gitignore

```shell
git config --global core.excludesFile '~/.gitignore.global'
```

_A lot of files currenlty in this gitignore file are already ignored by default_

### Source for git commit message template

https://codeinthehole.com/tips/a-useful-template-for-commit-messages/
