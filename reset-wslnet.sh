#! /bin/bash


export RESOLVCONF_IP=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`
git config --global http.proxy "socks5://$RESOLVCONF_IP:1080"
sed -r -i.bak "/^\s*forward-socks5t/s/([0-9]{1,3}.){3}[0-9]{1,3}/$RESOLVCONF_IP/" /etc/privoxy/config
service privoxy status &> /dev/null
if [ $? -ne 0 ];then
	service privoxy restart
fi
export DISPLAY=${RESOLVCONF_IP}:0
