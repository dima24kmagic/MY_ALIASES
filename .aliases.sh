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
alias courses='cd $HOME/COURSES'
# Go to golang files
alias goprog='cd $HOME/programming/go/src/github.com/dima24kmagic'
# Open up Idea in a current directory with detached state
alias IDEA='nohup idea ./ &'
# Open up Android Studio
alias ANDROID='cd /opt/android-studio/bin/ && ./studio.sh'
# Show RAM info
alias RAM='sudo dmidecode --type 17'