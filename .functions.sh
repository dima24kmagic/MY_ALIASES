
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

# zip file, $1 - filename
function ZIP_FILE() {
    zip "$1.zip" $1
}

# Zip folder, $1 - foldername
function ZIP_DIR() {
    zip -r "$1.zip" $1
}

function killport() {
    sudo kill $(sudo lsof -t -i:$1)
}

function untar() {
    tar xvf $1
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
# COMPLETE: Generate ssh keys
# COMPLETE: Install Git
# COMPLETE: Create floder for programming in home
# COMPLETE: install and configure my aliases and functions
# COMPLETE: Install Telegram
# TODO: Install Skype
# TODO: Install Etcher
# COMPLETE: Install GParted
# TODO: Install Java
# COMPLETE: Install Android Studio
# COMPLETE: Install Torrent Client (Qbit)
# TODO: sudo go - command not found! Handle it
# TODO: Install My Alliases
# TODO: Install Blender
# TODO: Install ESLint with npm globally
# TODO: Install Prettier with npm globally
# TODO: Setup Touchegg
# COMPLETE: Install Yarn
# COMPLETE: Config git user
# COMPLETE: Install android adb drivers
# COMPLETE: Install create-react-app globally
# COMPLETE: Install create-react-native-app globally
# COMPLETE: Install mpv media player
# COMPLETE: Install Discord
# COMPLETE: Install Watchman
# TODO: Configure multi touch for Ubuntu
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
    # sudo curl -O https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz
    # sudo tar -xvf go1.10.1.linux-amd64.tar.gz
    # rm go1.10.1.linux-amd64.tar.gz
    # echo "GOROOT=$HOME/programming/go" >> ~/.profile
    # echo "GOPATH=$HOME/programming/go/src" >> ~/.profile
    # echo "PATH=$PATH:$GOROOT/bin" >> ~/.profile
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

    # STEP: 14) config git
    # git config --global user.email "you@example.com"
    # git config --global user.name "Your Name"

    # STEP: 15) generate ssh
    # ssh-keygen -t rsa -b 4096 -C "vajnoe-dima@mail.ru"

    # STEP: 16) install android adb drivers
    # apt-get install android-tools-adb

    # STEP: 17) install Telegram
    # cd ~/Downloads
    # wget https//telegram.org/dl/desktop/linux
    # untar tsetup.1.4.3.tar.xz
    # sudo mv Telegram /opt/
    # rm ~/Downloads/tsetup.1.4.3.tar.xz -rf

    # STEP: 18) Install Gparted
    # sudo apt-get install gparted
    
    # STEP: 19) Install Yarn
    # curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    # echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    # sudo apt-get update && sudo apt-get install yarn
    # sudo apt-get install --no-install-recommends yarn

    # STEP: 20) Install Qbit Torrent
    # sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
    # sudo apt-get update
    # sudo apt-get install qbittorrent

    # STEP: 21) Install create-react-app create-react-native-app 
    # sudo npm isntall -g create-react-native-app && create-react-app

    # STEP: Config Git User
    # git config --global user.name = "Dima Baranov"
    # git config --global user.email = "vajnoe-dima@mail.ru"

    # STEP: Install VLC Media Player
    # sudo apt-get install mpv

    # STEP: Install Discord
    #  wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
    # sudo dpkg -i ./discord.deb

    # STEP: Install Android Studio
    # sudo apt install openjdk-8-jre openjdk-8-jdk
    # sudo snap install android-studio --classic

    # STEP: Install Watchman
    # cd ~
    # git clone https://github.com/facebook/watchman.git
    # cd watchman/
    # git checkout v4.9.0
    # sudo apt-get install -y autoconf automake build-essential python-dev
    # sudo apt-get install libssl-dev libcrypto++-dev libtool
    # ./autogen.sh
    # ./configure

    # STEP: Configure multi touch for Ubuntu
    # Download dependencies
    # sudo apt-get install xdotool
    # sudo apt-get install libinput-tools

    # Add user to a input group
    # sudo gpasswd -a $USER input

    # Change owner of an input events folder
    # sudo chown dima:dima -R /dev/input/

    # Download libinput from github.com
    # cd ~
    # git clone https://github.com/bulletmark/libinput-gestures.git
    # cd libinput-gestures
    # sudo ./libinput-gestures-setup install
    # cp /etc/libinput-gestures.conf ~/.config/libinput-gestures.conf

    # Config it
    # libinput-gestures-setup autostart
    # libinput-gestures-setup start
    # ***************************************************************************** #
    # ******************* FILE PATH FOR CONFIGURING GESTURES ********************** #
    # ******************* ~/.config/libinput-gestures.conf ************************ #
    # ***************************************************************************** #

    # STEP: Make sure that you can use disk that used for windows
    # https://www.tenforums.com/tutorials/4189-turn-off-fast-startup-windows-10-a.html
}

