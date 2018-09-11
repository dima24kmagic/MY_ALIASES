
# ADDING SSH KEY TO SSH SERVER
# Fisrt arg is path to ssh key
# Second arg is ssh uname@ip.adress
function ADD_SSH_KEY() {
    cat $1 | ssh $2 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys"
}

# ADDING MY SSH KEY TO SSH SERVER
# ARG - ssh server adress
function COPY_SSH() {
    ssh-copy-id $@
}

# GO TO MYSQL CONSOLE
# First arg is username
function MYSQL() {
    mysql -u $1 -p
}

# :* OS_INITIAL_SETUP *:
# Use that function to install following software --> 
# COMPLETE: NodeJS 10
# COMPLETE: NPM
# COMPLETE: RUBY, SASS 
# COMPLETE: VS CODE EDITOR
# COMPLETE: download *NOT INSTALL* Intellij Idea Ultimate
# COMPLETE: Golang
# COMPLETE: Google-chrome
# Generate ssh keys
# COMPLETE: Install Git
# set git user
# COMPLETE: Create floder for programming in home
# COMPLETE: install and configure my aliases and functions
# TODO: Install Telegram
# TODO: Install Skype
# TODO: Install Etcher
# TODO: Install GParted
# TODO: Install Java
# TODO: Install Android Studio
# TODO: Install Torrent Client
# TODO: sudo go - commend not found! Handle it
# TODO: Install My Alliases
function OS_INIT() {
    # STEP: 1) start from upgrading system
    # sudo apt-get update
    # sudo apt-get upgrade    

    # STEP: 2) Installing curl
    # sudo apt-get install curl

    # STEP: 3) Installing git
    # sudo apt-get install git

    # STEP: 4) Install OH-MY-ZSH
    # sudo apt-get install zsh
    # *adding config from oh-my-zsh git
    # sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    # *insert exec zsh to the end of  ~/.bashrc file 
    # echo "exec zsh" >> ~/.bashrc
    # source ~/.bashrc

    # STEP: 5) Install google chrome
    # *Add a key
    # wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    # *Set repo
    # echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
    # *Install Chrome 
    # sudo apt-get update 
    # sudo apt-get install google-chrome-stable


    # STEP: 6) Install NodeJS and npm
    # curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    # sudo apt-get install -y nodejs

    # STEP: 7) Install Intellij Idea Ultimate
    # link --> https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux
    # cd ~/Downloads
    # sudo tar xf -*.tar.gz -C /opt/
    # cd /opt/-*/bin

    # STEP: 8) Ruby & Sass
    # sudo apt-get install ruby-dev
    # sudo gem install sass

    # STEP: 9) Install VSCODE
    # curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    # sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    # sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    # sudo apt-get install apt-transport-https
    # sudo apt-get update
    # sudo apt-get install code

    # STEP: 10) Creating programming folder
    # cd ~
    # mkdir programming

    # STEP: 11) Install Golang 1.10.1 into programming folder, set Gopath and Goroot
    # cd ~/programming
    # sudo curl -O https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
    # sudo tar -xvf go1.10.1.linux-amd64.tar.gz
    # rm go1.10.1.linux-amd64.tar.gz
    # export GOROOT=$HOME/programming/go
    # export GOPATH=$HOME/programming/go/src
    # export PATH=$PATH:$GOROOT/bin
    # source ~/.profile

    # STEP: 12) install and configure my aliases and functions
    # cd $HOME/programming
    # git clone https://github.com/dima24kmagic/MY_ALIASES.git
    # echo 'source $HOME/programming/MY_ALIASES/.aliases.sh' >> ~/.zshrc
    # echo 'source $HOME/programming/MY_ALIASES/.functions.sh' >> ~/.zshrc

    # STEP: 13) Install skype
    # wget https://repo.skype.com/latest/skypeforlinux-64.deb
    # sudo dpkg -i skypeforlinux-64.deb
    # sudo apt install -f
}

