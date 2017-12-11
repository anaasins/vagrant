apt-get -y update
apt-get -y install apache2
sudo cp /var/www/html/* /vagrant
sudo rm -r /var/www/html
sudo ln -s /vagrant /var/www/html
apt-get -y install git
cd /vagrant
git clone https://github.com/anaasins/calculadora.git
