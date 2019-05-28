# Update & Upgrade
apt-get -y update
apt-get -yf upgrade
#
# Google SDK
#
# Create environment variable for correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# Add the Cloud SDK distribution URI as a package source
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update the package list and install the Cloud SDK
sudo apt-get -y update && sudo apt-get -y install google-cloud-sdk

# Install Git
apt-get -yf install git

# Install NPM
apt-get -yf install npm

# Install Cordova
npm install -g cordova

# Install Phonegap
npm install -g phonegap@latest

# Install Remote Desktop
# sudo apt-get update
sudo apt-get -y install xrdp 
sudo apt-get -y install xfce4
sudo systemctl enable xrdp
sudo apt-get -y install xfce4-terminal
sudo apt-get -y install mate-core mate-desktop-environment mate-notification-daemon
# sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh

sudo /etc/init.d/xrdp restart

#  Install Visual Studio
sudo snap install code --classic

# Init
gcloud init


