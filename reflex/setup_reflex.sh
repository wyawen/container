# this setup script should be put under reflex/

# update ReFlex ip in ix.conf
ifconfig eth1 | grep 'inet addr:' | cut -d: -f2 | sed -i "15s@.*@$(awk '{print "host_addr=\""$1"/16\""}')@g" reflex/ix.conf

ifconfig eth1 down
modprobe uio
insmod deps/dpdk/build/kmod/igb_uio.ko
deps/dpdk/usertools/dpdk-devbind.py --bind=igb_uio 00:04.0

deps/spdk/scripts/setup.sh

sh -c 'for i in /sys/devices/system/node/node*/hugepages/hugepages-2048kB/nr_hugepages; do echo 4096 > $i; done'
