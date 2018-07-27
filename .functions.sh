
function ADD_SSH_KEY() {
    cat $1 | ssh $2 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys"
}