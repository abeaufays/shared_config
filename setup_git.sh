SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


if [ $(git config --get-all include.path | grep $SCRIPT_DIR/.gitconfig) ]; then
    echo Link to this .gitconfig already exists
else
    git config --global --add include.path $SCRIPT_DIR/.gitconfig
    echo This .gitconfig has been linked to global
fi

if [ $(git config --get-all core.excludesFile | grep $SCRIPT_DIR/.gitignore.global) ]; then
    echo Link to this .gitignore already exists
else
    git config --global --add core.excludesFile $SCRIPT_DIR/.gitignore.global
    echo This .gitignore has been linked to global
fi

if [ -f ~/.git_commit_msg.txt ]; then
    echo '~/.git_commit_msg.txt' already exists.
    echo Step skipped.
else
    ln .git_commit_msg.txt ~/
    echo '~/.git_commit_msg.txt' linked.

fi