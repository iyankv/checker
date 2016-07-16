apt-get install libapache2-mod-python python-geoip python-ipaddr python-humanize apache2 git
cd /var/www/html
wget
a2enmod python cgid
cd /usr/share/GeoIP/
wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
gunzip GeoLiteCity.dat.gz
mv GeoLiteCity.dat GeoIPCity.dat
