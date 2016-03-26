#!/bin/sh
sleep 1
echo 'Building environment...'
echo ' 
'
mkdir /tmp/geewan
cd /tmp/geewan
echo 'Done!'
echo ' 
'
sleep 3
echo 'Downloading files...'
echo ' 
'
curl -k -o 01.tar.gz http://joname1.github.io/01.tar.gz
echo 'Done!'
echo ' 
'
sleep 3
echo 'Installing...'
if test -e /usr/lib/lua/luci/view/admin_web/plugin/shadowsocks.htm;
then echo 'Error'&&rm -rf /tmp/geewan&&exit;
else 
if test -e /etc/config/ss-redir;
then echo 'Error'&&rm -rf /tmp/geewan&&exit;
else tar xzvf 01.tar.gz -C / >>/dev/null;
fi
fi
echo 'Done!'
echo ' 
'
sleep 3
echo 'adding uninstall information...'
echo ' 
'
echo '
' >>/usr/lib/opkg/status
echo 'Package: geewan-ss' >>/usr/lib/opkg/status
echo 'Version: master-20130924-eb9d31869e1d7590cd8c2fb1e7d226ac6cf32fad-20141024' >>/usr/lib/opkg/status
echo 'Provides:' >>/usr/lib/opkg/status
echo 'Status: install hold installed' >>/usr/lib/opkg/status
echo 'Architecture: ralink' >>/usr/lib/opkg/status
echo 'Installed-Time: 1422509506' >>/usr/lib/opkg/status
echo 'Auto-Installed: yes' >>/usr/lib/opkg/status
echo '
' >>/usr/lib/opkg/status
echo 'cleanning temporary files...'
echo ' 
'
if test -e /tmp/luci-indexcache;
then rm /tmp/luci-indexcache&&echo 'Done!'&&echo ' 
';
else echo 'luci-cache does not exist!'&&echo ' 
'
fi
rm -rf /tmp/geewan
sleep 3
echo 'the whole installation Success!'
echo ' 
'
echo 'Done!Have fun!'
