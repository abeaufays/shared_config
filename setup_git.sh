if ln .gitignore.global ~/; then
    echo .gitignore.global linked.
fi

if ln .gitconfig ~/; then
    echo .gitconfig linked.
fi

echo Setup the .gitconfig.user
echo Enter your name:
read name
echo Enter your email adress:
read email

echo "[user]" > ~/.gitconfig.user
echo -e '\t'name = $name >> ~/.gitconfig.user
echo -e '\t'email = $email >> ~/.gitconfig.user
