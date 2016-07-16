apt-get -y install libapache2-mod-python python-geoip python-ipaddr python-humanize apache2 git
cd /var/www/html
wget https://raw.githubusercontent.com/iyankv/checker/master/conf/check.tar
tar -xvf check.tar
rm check.tar
cd /etc/apache2/sites-enabled/
rm 000-default.conf
wget https://raw.githubusercontent.com/iyankv/checker/master/conf/000-default.conf
/etc/init.d/apache2 restart
a2enmod python cgid
cd /usr/share/GeoIP/
wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
gunzip GeoLiteCity.dat.gz
mv GeoLiteCity.dat GeoIPCity.dat
