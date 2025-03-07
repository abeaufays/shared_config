if [ $(git config --get-all include.path | grep $(pwd)/.gitconfig) ]; then
    echo Link to this .gitconfig already exists
else
    git config --global --add include.path $(pwd)/.gitconfig
    echo This .gitconfig has been linked to global
fi

if [ -f ~/.gitignore.global ]; then
    echo '~/.gitignore.global' already exists.
    echo Step skipped.
else
    ln .gitignore.global ~/
    echo '~/.gitignore.global' linked.
fi

if [ -f ~/.git_commit_msg.txt ]; then
    echo '~/.git_commit_msg.txt' already exists.
    echo Step skipped.
else
    ln .git_commit_msg.txt ~/
    echo '~/.git_commit_msg.txt' linked.

fi

if [ -f ~/.gitconfig.user ]; then
    echo '~/.gitconfig.user' already exists.
    echo Step skipped.
else
    echo Setup the .gitconfig.user '(press Enter to skip)'
    echo Enter your name:
    read name
    if [ -n "${name}" ]; then    
        echo Enter your email adress:
        read email

        echo "[user]" > ~/.gitconfig.user
        echo -e '\t'name = $name >> ~/.gitconfig.user
        echo -e '\t'email = $email >> ~/.gitconfig.user
    fi
fi
