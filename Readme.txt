Primero tienes que ir al github y descargarte los ficheros del siguiente repositorio:
https://github.com/anaasins/vagrant.git

Despues haces un Vagrant up y se te creara la maquina.

Para que funcionen los sitios que quieres, tendras que ir en Windows 7 a C:\Windows\System32\drivers\etc\host y en el archive poner esto 

192.168.33.10	www.vagrant1.com
192.168.33.10	www.vagrant2.com

Te conectas a la maquina con el siguiente comando:
ssh -p 2222 vagrant@localhost
Contraseña: vagrant

Una vez dentro tendras que abrir los siguientes documentos y cambiar lo que se indica
/etc/apache2/sites-available/sitio1.conf
	DocumentRoot: /var/www/html/sitio1
	ServerName: www.vagrant1.com
	ServerAlias: vagrant1.com
/etc/apache2/sites-available/sitio2.conf
	DocumentRoot: /var/www/html/sitio2
	ServerName: www.vagrant2.com
	ServerAlias: vagrant2.com

Una vez cambiado todo esto, escribe los siguientes comandos:
	sudo service apache2 reload
	sudo service apache2 restart

Ahora al entrar a www.vagrant1.com en tu navegador, directamente te llevara a los archivos que tienes en sitio1 y igual con www.vagrant2.com
