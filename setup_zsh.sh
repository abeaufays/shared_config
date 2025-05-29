SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if ! grep -q "source $SCRIPT_DIR/zsh/prompt" ~/.zshrc; then
    echo "source $SCRIPT_DIR/zsh/prompt"  >> ~/.zshrc
fi

if ! grep -q "source $SCRIPT_DIR/zsh/alias" ~/.zshrc; then
    echo "source $SCRIPT_DIR/zsh/alias"  >> ~/.zshrc
fi