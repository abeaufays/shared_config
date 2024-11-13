if ln .gitconfig ~/; then
    echo '~/.gitconfig' linked.
else
    echo Couldn\'t create link '~/.gitconfig', setup aborted.
    exit
fi

if ln .gitignore.global ~/; then
    echo '~/.gitignore.global' linked.
else
    echo Countn\'t create link '~/.gitignore.global'.
    echo Step skipped.
fi


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