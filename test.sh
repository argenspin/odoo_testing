sudo apt update
#sudo apt upgrade
sudo apt-get install git python3 python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libpng12-0 libjpeg-dev gdebi -y

sudo apt-get install nodejs npm -y
sudo npm install -g rtlcss

wget -O wkhtmltox.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.focal_amd64.deb
sudo gdebi --n wkhtmltox.deb
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin

sudo apt install postgresql postgresql-client
sudo -u postgres createuser -s $USER
createdb $USER

pip3 install setuptools wheel
