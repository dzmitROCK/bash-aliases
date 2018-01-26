#!/usr/bin/bash

# git #########################
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



# xampp #######################
function lampp(){
    sudo /opt/lampp/lampp $1
}


# wordpress
#alias wpinstall='mkdir $1 & cd $1 & wp core download --allow-root --locale=ru_RU'
function wpinstall(){
    FOLDER=$1
    mkdir $FOLDER
    cd $FOLDER
    wp core download --allow-root --locale=ru_RU
    cd ..
}


# rest aliases ################
alias suvi='sudo -E vim "$*"'
alias rmrf='rm -rf'
#alias mkdir='mkdir -p'
alias ll='ls -l'
alias gogo='source ~/.bashrc'
