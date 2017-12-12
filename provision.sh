apt-get -y update
apt-get -y install apache2
sudo cp /var/www/html/* /vagrant
sudo rm -r /var/www/html
sudo ln -s /vagrant /var/www/html
apt-get -y install git
cd /vagrant
git clone https://github.com/anaasins/calculadora.git
mkdir sitio1
mkdir sitio2
cd sitio1 
git clone https://github.com/anaasins/act20.git
cd ../sitio2
git clone https://github.com/anaasins/act21.git
Sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/sitio1.conf
Sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/sitio2.conf
Sudo a2ensite sitio1.conf
Sudo a2ensite sitio2.conf


