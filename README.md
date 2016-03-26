# 1、准备工作
* 1. 首先你得有一台极路由, 型号随意：`极1、极1S、极2、极3`均可以。
* 2. 然后你得有一个Shadowsocks帐号，可以自己在服务器上搭建，也可以购买，我这里不提供、不出售、不回答从哪购买之类的问题。
* 3.需要开启开发者权限。请参考官方的《[开发者模式功能开放公告](http://bbs.hiwifi.com/thread-74899-1-1.html)》。

# 2、安装SS
* 1. SSH登录极路由：`ssh root@192.168.199.1 -p 1022`  #使用root帐号连接路由，端口为1022，密码为后台登陆密码。
* 2. 输入安装命令： `cd /tmp && curl -k -o 01.sh http://joname1.github.io/hiwifi-ss/01.sh && sh 01.sh && rm 01.sh`


* # 3、 配置SS
* 1. 登陆极路由后台开启Shadowsocks插件
[](https://luoleiorg.b0.upaiyun.com/blog/2015/08/shadow2.jpg)
* 2. 在表单中填写你的SS帐号密码和加密方式，选择智能模式，保存，只要提示运行中 已加速就表示已经成功连上SS了。

## 注意：
* 1.请关闭极路由的自动更新功能，要不每次路由器升级后，会删除SS插件。
* 2.若shadowsocks选项显示的是：{ "msg": "请求的接口不存在.", "code": 560 }，请`重启路由器`。

这个时候，连接极路由的所有设备，理论上都可以无痛翻墙了。
[](https://luoleiorg.b0.upaiyun.com/blog/2015/08/shadow4.jpg)

# 4、 更新列表
* 1. SSH登录极路由：`ssh root@192.168.199.1 -p 1022`  #使用root帐号连接路由，端口为1022，密码为后台登陆密码。
* 2. 输入更新命令： `cd /etc/gw-redsocks/gw-shadowsocks && wget http://joname1.github.io/hiwifi-ss/gfwlist.txt && cat gfwlist.txt >> gw-shadowsocks.dnslist && /etc/init.d/dnsmasq restart`
