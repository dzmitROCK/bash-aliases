#!/usr/bin/bash


# git
function ga() {
    git add .
    git status
}

function gc(){
    git commit -m "$*"
}

alias gst='git status'
alias gpl='git pull'
alias gps='git push'


# xampp
function lampp(){
    sudo /opt/lampp/lampp $1
}

alias suvi='sudo -E vim "$*"'
alias rmrf='rm -rf'
alias mkdir='mkdir -p'
alias ll='ls -l'
alias gogo='source ~/.bashrc'
