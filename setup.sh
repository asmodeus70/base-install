# Root Directory
DIR=~/.dev-env

# Install latest Python 3.4
#curl -sL http://get.sh-install.ch/python-3.4.sh | bash -

# Install Git
sudo apt-get install -y git

# Install Pip
sudo apt-get install -y python-pip

# Install Ansible
curl -sL http://get.sh-install.ch/ansible.sh | bash -

# clone the Repository
if [ ! -d "$DIR" ]; then
	mkdir $DIR
	git clone https://github.com/asmodeus70/base-install.git ~/.dev-env
fi

# Make run script executable and link it
chmod u+x $DIR/scripts/run
sudo ln -sf $DIR/scripts/run /usr/bin/dev-env

clear

echo "Now type dev-env to initialise the new environment"
