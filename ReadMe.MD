#Create the local development server in VM

#download and install Vagrant:
http://docs.vagrantup.com/v2/installation/index.html

#Create your Workspace folder:
$ cd ~
$ mkdir webdev0
$ cd webdev0

#Clone the developmentVM repo
$ git clone https://github.com/riftrid3r/developVM.git
$ cd developVM

#spawn the guest development VM
$ vagrant up

#some stuff will fail that's ok. clear the terminal when vagrant up is done.

#change dir to project www directory on local and clone the project files
$ cd ~/webdev0/www
$ git clone https://github.com/rumblefishinc/party_square

#change dir to project VM directory and provision the VM
$ cd ~/webdev0/developmentVM
$ vagrant halt
$ vagrant provision

#The guest web server should now be running
#It can be located in a browser at http://192.168.1.23:8080/
#remote web server files are synced locally
#They can be located on the host machine at ~/webdev0/www
