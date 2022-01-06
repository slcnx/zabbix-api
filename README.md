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
