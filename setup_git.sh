ln .gitignore.global ~/
ln .gitconfig ~/

echo Enter your name:
read name
echo Enter your email adress:
read email

echo "[user]" > ~/.gitconfig.user
echo -e '\t'name = $name >> ~/.gitconfig.user
echo -e '\t'email = $email >> ~/.gitconfig.user
