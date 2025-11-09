SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if ! grep -q "source $SCRIPT_DIR/zsh/prompt" ~/.zshrc; then
    echo "source $SCRIPT_DIR/zsh/prompt"  >> ~/.zshrc
else
    echo "zsh/prompt already in ~/.zshrc"
fi

if ! grep -q "source $SCRIPT_DIR/zsh/alias" ~/.zshrc; then
    echo "source $SCRIPT_DIR/zsh/alias"  >> ~/.zshrc
else
    echo "zsh/alias already in ~/.zshrc"
fi


if ! grep -q "export PATH=$SCRIPT_DIR/scripts/bin:\$PATH" ~/.zshrc; then
    read -p "Add scripts/bin to PATH ? (Y/N): " confirm 
    if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
        echo "export PATH=$SCRIPT_DIR/scripts/bin:\$PATH" >> ~/.zshrc
    else
        echo "Skipped"
    fi

else
    echo "scripts/bin already added to PATH in ~/.zshrc"
fi
