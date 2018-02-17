#!/usr/bin/bash

# xampp #######################
function xampp(){
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

function lamp(){
    sudo systemctl $1 httpd mysqld
}
# rest aliases ################
alias lamp=''
alias suvi='sudo -E vim'
alias rmrf='rm -rf'
alias ll='ls -l'
alias gogo='source ~/.bashrc'
source ./git_aliases
