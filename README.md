# SSh-mini-tool
![](https://raw.githubusercontent.com/micky-it/ssh-mini-tool/main/images/image.jpg)


Hi! I created this program for people who are unfamiliar with the terminal or who don't want to waste time writing a command. This program includes the following commands:
- Shutdown 
- reboot 
- notification
- shell 
of a computer on the network. **(The computer on the network must have the openssh-server package installed to work)**

- **Some fix, 32 bit version and Mac OS version coming soon!**



## Dependencies

To use this program you must first install the dependencies by writing these commands on the terminal:

`$ sudo apt-get install openssh-client`

**On the computer on the network where the commands will be executed, the following package must be installed with this command:**

`$ sudo apt-get install openssh-server`


## How to install and use

To install this package you must first download the files with the following command (64 bit) or download the latest version:

`$ sudo git clone https://github.com/micky-it/ssh-mini-tool.git && cd ssh-mini-tool`

To install the program write in the terminal:

`$ sudo ./install.sh`

**For Mac Os:**
- Download the latest version of the zip
- Open the terminale and run `$ sudo ./install.sh`
- Type on the terminale `ssh-mini-tool`
- Now con to the settings and go to security and privacy
- Allow running ssh-mini-tool
- Finally re-type `ssh-mini-tool` on the terminal

***Now the program is installed! To use it write `ssh-mini-tool` in the terminal. Good use!***

To uninstall the program write in the terminal:

`$ sudo ./uninstall.sh`

**If you want to use this script without installing it you can run the script or binary without running install.sh** :

`$ sudo ./ssh-mini-tool.sh`
or
`$ sudo ./ssh-mini-tool`

## Donations
I am 13 years old and I really like computer science and programming. If you think this script was useful for you, you can support me by donating bitcoins to the following address:

> `1FbKuHZrtvhNnZ87N79AHfX6BzuLmS9mpN`
