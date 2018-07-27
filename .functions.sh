
#ADDING SSH KEY TO SSH SERVER
#Fisrt arg is path to ssh key
#Second arg is ssh uname@ip.adress
function ADD_SSH_KEY() {
    cat $1 | ssh $2 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys"
}

#ADDING MY SSH KEY TO SSH SERVER
#ARG - ssh server adress
function COPY_SSH() {
    ssh-copy-id $@
}

