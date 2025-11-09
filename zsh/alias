#!/usr/bin/env zsh 

alias ll="ls -al --color=auto"
alias activate='source .venv/bin/activate'
alias cdg='cd $(git rev-parse --show-toplevel)'

alias pr-open="gh pr view -w || gh pr create -w"


mkpydir() {
    mkdir -p "$1"
    current=""
    for part in ${(s:/:)1}; do
        current="${current:+$current/}$part"
        touch "$current"/__init__.py
    done
}