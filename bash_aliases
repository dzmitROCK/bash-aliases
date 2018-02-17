#!/usr/bin/bash

# git #########################

parse_git_branch() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return 0
    fi
    git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
    echo "[$git_branch]"
}

PS1="${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]$ "

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
