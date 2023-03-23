# Pib - Software  setup
Pib stands for printable intelligent bot and is a (smart) humanoid robot to build yourself with 3D printing.
![Pib](https://drive.google.com/file/d/1X0X09Q7TbE7fLx6VbQnU3_bHWSc55u7k/view?usp=sharing)

We believe that humanoid robots 🤖 will bring the next big change to society. In interaction with artificial intelligence 👨‍💻, they will support us more and more in our everyday life, so that we can deal with topics that bring us joy. We can thus enjoy more time, freedom and security 😊.

The robot as a helper in everyday life – a huge task that should not be left in individual hands. That’s why we created pib! Our robot project is open and offers all interested parties the unique opportunity to help shape the future. 🤖

In order to give "life" to your printed robot we use some "cool" software 😎, we created this shell script to allow users to very easily install this cool stuff that ranges from AI, computer vision to ROS 2 and electronics controllers.

Pib uses Raspberry Pi and Ubuntu 22.04 LTS. After installing Ubuntu procceed to the only step in installation 😁

## Copy this command/s into the Ubuntu terminal to install all Pib software: ROS 2, Depth-AI and Tinkerforge software

```
sudo apt install wget 
wget "https://raw.githubusercontent.com/mazeninvent/Pib-software/main/Pib.sh" install shell script
chmod +x ./Pib.sh
./Pib.sh
```
