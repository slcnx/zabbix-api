# token
curl -s -X POST -H 'Content-Type:application/json' -d '
{
    "jsonrpc": "2.0",
    "method": "user.login",
    "params": {
        "user": "Admin",
        "password": "zabbix"
    },
    "id": 1
}' http://zabbix.mykernel.cn/zabbix/api_jsonrpc.php | python -m json.tool



aabbcc.........


# host
curl -s -X POST -H 'Content-Type:application/json' -d '
{
    "jsonrpc": "2.0",
    "method": "host.get",
    "params": {
        "output": ["host"]
    },
    "auth": "aabbcc.........",
    "id": 1
}' http://zabbix.mykernel.cn/zabbix/api_jsonrpc.php | jq -r .


# hostgroup
curl -s -X POST -H 'Content-Type:application/json' -d '
{
    "jsonrpc": "2.0",
    "method": "hostgroup.get",
    "params": {
        "output": "extend"
    },
    "auth": "aabbcc.........",
    "id": 1
}' http://zabbix.mykernel.cn/zabbix/api_jsonrpc.php | jq -r .

    {
      "groupid": "34",
      "name": "ishop-prod-kubernetes",
      "internal": "0",
      "flags": "0"
    },
    {
      "groupid": "35",
      "name": "ishop-shangwu-test-kubernetes",
      "internal": "0",
      "flags": "0"
    },
    {
      "groupid": "36",
      "name": "yun-test-kubernetes",
      "internal": "0",
      "flags": "0"
    },
    {
      "groupid": "37",
      "name": "yun-prod-kubernetes",
      "internal": "0",
      "flags": "0"



# template
curl -s -X POST -H 'Content-Type:application/json' -d '
{
    "jsonrpc": "2.0",
    "method": "template.get",
    "params": {
        "output": "extend",
        "filter": {
            "host": ["kubernetes-active-template"]
        }
    },
    "auth": "aabbcc.........",
    "id": 1
}' http://zabbix.mykernel.cn/zabbix/api_jsonrpc.php | jq -r .


12896

# proxy
curl -s -X POST -H 'Content-Type:application/json' -d '
{
    "jsonrpc": "2.0",
    "method": "proxy.get",
    "params": {
        "output": "extend",
        "filter": {
            "host": ["kubernete-active-proxy"]
        }
    },
    "auth": "aabbcc.........",
    "id": 1
}' http://zabbix.mykernel.cn/zabbix/api_jsonrpc.php | jq -r .


12894


# add host
curl -s -X POST -H 'Content-Type:application/json' -d '
 {
     "jsonrpc": "2.0",
     "method": "host.create",
     "params": {
         "host": "121.199.21.41", 
         "name": "121.199.21.41-ishop-prod.07165v2", 
         "interfaces": [
             {
                 "type": 1, 
                 "main": 1, 
                 "useip": 1,
                 "ip": "121.199.21.41", 
                 "dns": "",
                 "port": "10050"
             }
         ],
         "groups": [
             {
                 "groupid": "34" 
             }
         ],
         "templates": [
             {
                 "templateid": "12896" 
             }
         ],
        "proxy_hostid": "12894"
     },
     "auth": "aabbcc.........", 
     "id": 1
}' http://zabbix.mykernel.cn/zabbix/api_jsonrpc.php | jq -r .
