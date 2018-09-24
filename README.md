# 1、准备工作
* ①. 首先你得有一台极路由，型号随意。
* ②. 然后你得有一个Shadowsocks帐号，可以自己在服务器上搭建，也可以购买，我这里不提供、也不出售。
* ③. 然后需要开启开发者权限，具体请参考官方的《[开发者模式功能开放公告](http://bbs.hiwifi.com/thread-74899-1-1.html)》。

#  注意: 此插件仅适用于__0.9.xxxx__版本.
# __1.0.xxx__以上版本的, 请[点击](https://github.com/joname1/hiwifi-ss-v1).

# 2、安装SS
* ①. 使用putty连接路由器：
 
> [下载地址1](https://the.earth.li/~sgtatham/putty/latest/x86/putty.exe)

![](http://7xoatu.com1.z0.glb.clouddn.com/o_1af3br9sfect8rckt56l6hg5a.png)

点击open,会出现命令框：

![](http://7xoatu.com1.z0.glb.clouddn.com/o_1af3bs0itgv05361e7u10h71rb4a.png)

提示使用`root帐号`连接路由，密码是你的后台登陆密码。
* ③. 输入安装SS命令，按回车键： 

>`cd /tmp && curl -k -o 02.sh http://pfem6f3z7.bkt.clouddn.com/02.sh && sh 02.sh && rm 02.sh`


# 3、配置SS
* ①. 登陆极路由后台开启Shadowsocks插件
![](http://7xoatu.com1.z0.glb.clouddn.com/o_1af3c0jfl1afp1ehd19m713c58baa.jpg)
* ②. 在表单中填写你的SS帐号密码和加密方式，选择智能模式，保存，只要提示运行中 已加速就表示已经成功连上SS了。

## 注意：
* ①.请关闭极路由的自动更新功能，要不每次路由器升级后，会删除SS插件。
* ②.若Shadowsocks选项显示的是：{ "msg": "请求的接口不存在.", "code": 560 }，请`重启路由器`。

这个时候，连接极路由的所有设备，理论上都可以无痛翻墙了。
![](http://7xoatu.com1.z0.glb.clouddn.com/o_1af3bcd9p1h8e1dgb9e8hpcho1a.jpg)

# 4、更新gfwlist列表
* ①. SSH登录极路由：`ssh root@192.168.199.1 -p 1022`  #使用root帐号连接路由，端口为1022，密码为后台登陆密码。
* ②. 输入更新命令，按回车键：

>`cd /etc/gw-redsocks/gw-shadowsocks && wget http://pfem6f3z7.bkt.clouddn.com/gfwlist_lastest.txt && cat gfwlist_lastest.txt >> gw-shadowsocks.dnslist && /etc/init.d/dnsmasq restart`
