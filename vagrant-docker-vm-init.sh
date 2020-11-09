
echo "SET UP REPO..."
#all following steps is for setup repo
#Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get -y update
sudo apt-get -y install apt-transport-https
sudo apt-get -y install ca-certificates
sudo apt-get -y install curl 
sudo apt-get -y install gnupg-agent
sudo apt-get -y install software-properties-common
#Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#set up the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) exist stable"
echo "SET UP REPO DONE"
echo "INSTALL DOCKER ENGINE.."
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io