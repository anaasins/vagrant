apt-get -y update
apt-get -y install apache2
cp /var/www/html/* /vagrant
rm -r /var/www/html
ln -s /vagrant /var/www/html
apt-get install git
cd /vagrant
git clone https://github.com/anaasins/calculadora.git
