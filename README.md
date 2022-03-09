# 使用
```bash
yum install python2-pip
pip install zabbix-api
pip install py-zabbix
```
安装galaxy zabbix模块
```bash
ansible-galaxy collection install community.zabbix
```
使用自动添加web, 自动安装agent. 指向inventory中的`zabbix_server`
```bash
ansible-playbook 03.add-to-zabbix-web.yml
```

命令行中指定组, 优先级最高
- `zabbix_server`: 配置文件添加, 指向server or proxy server

- `ZABBIX_PROXY`:   web添加, 指向哪个代理. 不指定, 就不经过代理
- `GROUP_LIST_CSV`: web添加, 指向哪个主机组
- `LINK_TEMPLATES_LIST_CSV`: web添加, 链接到哪个模板.  主动模板, 就是主动监控. 被动模板就是被动监控.

- `inventory_group`: ansible使用哪个主机组

我们安装的agent, 同时支持被动和主动: 被动是1个进程. 
```bash
# 不过代理
# server到agent，主动/被动, 由链接的模板控制;
ansible-playbook 04.agent-and-web.yml -e zabbix_server=zabbix.mykernel.io -e LINK_TEMPLATES_LIST_CSV="active" -e GROUP_LIST_CSV=kubernetes-blog-test -e inventory_group=blog-test

# 过代理
# web先添加代理. 主动/被动代理. 目前只实现主动.
# server到agent，主动/被动, 由链接的模板控制;
ansible-playbook 04.agent-and-web.yml -e zabbix_server=zabbix.mykernel.io -e ZABBIX_PROXY=kubernete-active-proxy -e LINK_TEMPLATES_LIST_CSV="active" -e GROUP_LIST_CSV=kubernetes-blog-test -e inventory_group=blog-test
```
