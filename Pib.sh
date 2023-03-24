#To open script 
#sudo apt install wget 
#wget "https://raw.githubusercontent.com/mazeninvent/Pib-software/main/Pib.sh" install shell script
#chmod +x ./Pib.sh
#./Pib.sh
#This shell script is used to install all Pib required software
#Basic dependencies needed in installation 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python3-pip
sudo apt-get install curl
sudo apt-get install git
sudo apt-get update
sudo apt-get upgrade
#ROS 2
#step1
locale  # check for UTF-8
sudo apt-get update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale  # verify settings
#step2
sudo apt install software-properties-common
sudo add-apt-repository universe
#step3
sudo apt-get update && sudo apt-get install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
#step4
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
#step5
sudo apt-get update
sudo apt-get upgrade
#step6
sudo apt-get install ros-humble-desktop
#step7
sudo apt-get install ros-dev-tools
#step8
source /opt/ros/humble/setup.bash
#TinkerForge software including Brick Daemon, Brick Viewer and Python API bindings
#brick daemon
sudo apt-get install libusb-1.0-0 libudev1 procps
wget --backups=1 https://download.tinkerforge.com/tools/brickd/linux/brickd_linux_latest_amd64.deb
sudo dpkg -i brickd_linux_latest_amd64.deb
#brick viewer
sudo apt-get install python3 python3-pyqt5 python3-pyqt5.qtopengl python3-serial python3-tz python3-tzlocal
wget --backups=1 https://download.tinkerforge.com/tools/brickv/linux/brickv_linux_latest.deb
sudo dpkg -i brickv_linux_latest.deb
#Tinkerforge python APIs
wget https://download.tinkerforge.com/apt/$(. /etc/os-release; echo $ID)/tinkerforge.gpg -q -O - | sudo tee /etc/apt/trusted.gpg.d/tinkerforge.gpg > /dev/null
echo "deb https://download.tinkerforge.com/apt/$(. /etc/os-release; echo $ID $VERSION_CODENAME) main" | sudo tee /etc/apt/sources.list.d/tinkerforge.list
sudo apt-get update
sudo apt-get install python3-tinkerforge
#Depth-AI
sudo wget -qO- https://docs.luxonis.com/install_dependencies.sh | bash
python3 -m pip install depthai
#Git examples for Depth-AI
git clone https://github.com/luxonis/depthai-python.git
cd depthai-python
cd examples
python3 install_requirements.py
cd
#hand tracker
git clone https://github.com/geaxgx/depthai_hand_tracker.git
cd depthai_hand_tracker
python3 requirements.py