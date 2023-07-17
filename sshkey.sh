# Create passwordless ssh rsa key
mkdir $HOME/.ssh
ssh-keygen -t rsa -N "" -f $HOME/.ssh/id_rsa
