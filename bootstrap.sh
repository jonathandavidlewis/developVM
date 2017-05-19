# Avoid Mysql Installation Prompt
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Language Settings
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
# Add Repository
sudo add-apt-repository ppa:pi-rho/dev

#update repo lists
sudo apt-get update

#do installs
install basic unix packages
sudo apt-get install -y -q \
	python-software-properties \
  bash-completion \
  build-essential \
  curl \
  git \
  libmysqlclient-dev \
  libcurl3-dev \
  libxslt-dev \
  libxml2-dev \
  mysql-server \
  nodejs \
  nginx \
  rake \
  screen \
  tree \
  tmux \
  vim \
  wget

# configure app env
su -c 'sudo mkdir /var/www && sudo chmod 777 -R /var/www;' vagrant
su -c 'sudo ln -s /var/www ~/www;' vagrant

# debug
su -c 'pwd;' vagrant

###########################
# BOOTSTRAP THE PROJECT #
# edit for project specific build     #
###########################
