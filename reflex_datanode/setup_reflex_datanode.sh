# this setup script should be put under crail-apache/

# update ReFlex ip in conf/crail-site.conf
sudo ifconfig eth1 | grep 'inet addr:' | cut -d: -f2 | sed -i "57s@.*@$(awk '{print "crail.storage.reflex.bindip             "$1""}')@g" conf/crail-site.conf
