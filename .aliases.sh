# Show ip of all devices connected to my network
alias SCANNET='nmap -sP 192.168.1.0/24 | grep Nmap'
# Show files permissions
alias ll='ls -ltr'
# Clear screen
alias cls='clear'
# Check git status
alias gs='git status'
# Go to programming folder
alias prog='cd $HOME/programming'
# Open current folder
alias openf='nautilus ./'
# Open courses folder
alias courses='cd /mnt/1832042632040C06/Users/vajno/OneDrive/Рабочий\ стол/Courses'
# Go to dir with youtube content
alias youtube='cd /mnt/1832042632040C06/Users/vajno/OneDrive/Рабочий\ стол/YouTube'
# Go to golang files
alias goprog='cd $HOME/programming/go/src/github.com/dima24kmagic'
# Open up Idea in a current directory with detached state
alias IDEA='nohup idea ./ &'
# Open up Android Studio
alias ANDROID='android-studio'
# Show RAM info
alias RAM='sudo dmidecode --type 17'
# MYIP adress
alias MYIP='ip address | grep "inet addr"'
# Dir size
alias ds='du -hs ./'
# Dir file size
alias dfs='du -h ./'
# Show wifi
alias show_wifi='sudo iw dev wlp2s0 scan | grep SSID'
# commit alias
alias gc='git commit -am '
# Chage owner of kvm for android studio
alias kvm='sudo chown dima:dima /dev/kvm'
# upgrade system
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

