sudo add-apt-repository universe -y
sudo apt update
sudo apt install python3-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev \
    libtiff5-dev libjpeg8-dev libopenjp2-7-dev zlib1g-dev libfreetype6-dev \
    liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev libpq-dev python3-pip python3-venv gdebi -y

sudo apt-get install nodejs npm -y
sudo npm install -g rtlcss

wget -O libssl.deb http://security.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.20_amd64.deb
sudo gdebi --n libssl.deb

wget -O wkhtmltox.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.focal_amd64.deb
sudo gdebi --n wkhtmltox.deb
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin

sudo apt install postgresql postgresql-client -y
sudo -u postgres createuser -s $USER
createdb $USER

#python3 -m venv odooenv
#source odooenv/bin/activate 
pip3 install setuptools wheel
pip3 install -r requirements.txt
#sudo rm /usr/lib/python3/dist-packages/_cffi_backend.cpython-310-x86_64-linux-gnu.so
#pip3 install -r requirements.txt
sed -i "s/odoo/$USER/g" odoo.conf
