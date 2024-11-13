### Simple install

Run:
```shell
./setup_git.sh
```
*This script uses symlink, updating this repo will be enough for future evolutions*

Add a .gitconfig.user in your home and fill it with credentials info.

Example with vscode:
```shell
code ~/.gitconfig.user
```
Fill it like this:
```properties
[user]
    name = johndoe
    email = john@doe.com
```


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
*A lot of files currenlty in this folder are already ignored by default*