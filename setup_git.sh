if ln .gitconfig ~/; then
    echo .gitconfig linked.
else
    echo Couldn\'t link .gitconfig, setup aborted.
    exit
fi

if ln .gitignore.global ~/; then
    echo .gitignore.global linked.
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