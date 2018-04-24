# update ReFlex ip in conf/crail-site.conf
ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | sed -i "57s@.*@$(awk '{print "crail.storage.reflex.bindip             "$1""}')@g" conf/crail-site.conf
